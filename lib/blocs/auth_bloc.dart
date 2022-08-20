import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/config.dart';

class AuthBloc extends ChangeNotifier {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  GoogleSignIn get googleSignIn => _googleSignIn;

  SharedPreferences? sp;

  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  bool _loginInProgress = false;

  bool get loginInProgress => _loginInProgress;

  String _email = "";

  String get email => _email;

  String _name = "";

  String get name => _name;

  String _uid = "";

  String get uid => _uid;

  String _profilePicUrl = "";

  String get profilePicUrl => _profilePicUrl;

  ///Fetches session data when app opens
  AuthBloc() {
    loadUserDataFromSp();
  }

  Future<bool> loginWithEmailPassword(String email, String password) async {
    _loginInProgress = true;
    notifyListeners();
    User? user;
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        print("Invalid credential");
      }
      setLoginProgress(false);
    } catch (e) {
      print("Error: $e");
    }
    setLoginProgress(false);

    if (user != null) {
      _isLoggedIn = true;
      _email = user.email ?? "";
      _name = user.displayName ?? "";
      _uid = user.uid;
      _profilePicUrl = user.photoURL ?? "";

      List checkResult = await checkIfUserExists(_uid);
      bool userExists = checkResult[1];

      if (!userExists) {
        await saveDataToFirestore();
      }

      print("User logged in");
      await saveUserDataToSp();
    } else {
      print("User not logged in");
    }
    return isLoggedIn;
  }

  Future<bool> loginWithGoogle() async {
    setLoginProgress(true);

    User? user;

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      try {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential userCredential =
            await _firebaseAuth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'invalid-credential') {
          print("Invalid credential");
        }
        setLoginProgress(false);
      } catch (e) {
        print("Error: $e");
      }
      setLoginProgress(false);

      if (user != null) {
        _isLoggedIn = true;
        _email = user.email ?? "";
        _name = user.displayName ?? "";
        _uid = user.uid;
        _profilePicUrl = user.photoURL ?? "";

        List checkResult = await checkIfUserExists(_uid);
        bool userExists = checkResult[1];

        if (!userExists) {
          await saveDataToFirestore();
        }

        print("User logged in");
        await saveUserDataToSp();
      } else {
        print("User not logged in");
      }

      setLoginProgress(false);
    } else {
      print("Login cancelled");
      setLoginProgress(false);
    }
    return isLoggedIn;
  }

  ///Update _loginInProgress state variable
  void setLoginProgress(bool value) {
    _loginInProgress = value;
    notifyListeners();
  }

  ///Saves user data to session
  Future saveUserDataToSp() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(Config.prefEmail, email);
    sp.setString(Config.prefName, name);
    sp.setString(Config.prefUID, uid);
    sp.setString(Config.prefProfilePicUrl, profilePicUrl);
    sp.setBool(Config.prefLoggedIn, isLoggedIn);
  }

  ///Loads user data from Session
  Future loadUserDataFromSp() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _isLoggedIn = sp.getBool(Config.prefLoggedIn) ?? false;
    if (isLoggedIn) {
      _email = sp.getString(Config.prefEmail) ?? "";
      _name = sp.getString(Config.prefName) ?? "";
      _uid = sp.getString(Config.prefUID) ?? "";
      _profilePicUrl = sp.getString(Config.prefProfilePicUrl) ?? "";
    }
    notifyListeners();
  }

  ///Checks if user exists and returns boolean status accordingly
  Future checkIfUserExists(String uid) async {
    bool userExists = true;
    Map<String, dynamic> data = {};

    await FirebaseFirestore.instance
        .collection(Config.fscUsers)
        .where(Config.fsfUid, isEqualTo: uid)
        .limit(1)
        .get()
        .then(
      (value) {
        if (value.docs.isEmpty) {
          userExists = false;
        } else if (!value.docs[0].exists) {
          userExists = false;
        } else {
          data = value.docs[0].data();
        }
      },
    );
    return [data, userExists];
  }

  void signOut() async {
    // Clear Session
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();

    // Clear variables used in UI
    _isLoggedIn = false;
    _name = "";
    _profilePicUrl = "";
    _uid = "";
    _email = "";

    // Logout from auth providers
    await _googleSignIn.signOut();
    _firebaseAuth.signOut();

    print("User logged out");
    notifyListeners();
  }

  // if user doesn't exist in firestore
  Future saveDataToFirestore({String provider = "Google"}) async {
    await FirebaseFirestore.instance.collection(Config.fscUsers).doc(uid).set({
      Config.fsfUid: uid,
      Config.fsfName: name,
      Config.fsfEmail: email,
      Config.fsfLoginProvider: provider,
    });
  }
}
