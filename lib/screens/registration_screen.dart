import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:medibuddy/screens/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  static String id = "registration_screen";

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  // ignore: unused_field
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: "logo",
              child: Image.asset(
                'assets/images/chidiya.png',
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                children: [
                  SizedBox(
                    width: queryData.size.width * 0.8,
                    child: TextFormField(
                      autofocus: false,
                      decoration:
                          const InputDecoration().copyWith(labelText: "Email"),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                          if (kDebugMode) {
                            print(value);
                          }
                        });
                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  SizedBox(
                    width: queryData.size.width * 0.8,
                    child: TextFormField(
                      autofocus: false,
                      obscureText: true,
                      maxLines: 1,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                          if (kDebugMode) {
                            print(password + email);
                          }
                        });
                      },
                      decoration: const InputDecoration()
                          .copyWith(labelText: "Password"),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextButton(
                    onPressed: () async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: email.trim(), password: password);
                        // ignore: unnecessary_null_comparison
                        if (newUser != null) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamedAndRemoveUntil(
                              context, HomeScreen.id, (route) => false);
                        }
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'email-already-in-use') {
                          return showDialog(
                            context: context,
                            builder: (e) => AlertDialog(
                              title: const Text("Alert !"),
                              content: Text("$email is already in use"),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(e).pop();
                                  },
                                  child: const Text("OK"),
                                ),
                              ],
                            ),
                          );
                        } else if (e.code == 'weak-password') {
                          return showDialog(
                            context: context,
                            builder: (e) => AlertDialog(
                              title: const Text("Alert !"),
                              content: const Text("Your password is too weak"),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(e).pop();
                                  },
                                  child: const Text("Ok"),
                                ),
                              ],
                            ),
                          );
                        }
                      } catch (e) {
                        if (kDebugMode) {
                          print(e);
                        }
                      }
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: kPrimaryColor,
                      elevation: 1.0,
                      minimumSize: Size(queryData.size.width * 0.6,
                          queryData.size.height * 0.06),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: kBackgroundColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                          text: 'Already have account? ',
                          style: TextStyle(
                            color: kTextColor,
                          ),
                        ),
                        TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              color: kBottomContainerColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              }),
                      ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
