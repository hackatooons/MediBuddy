import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medibuddy/blocs/auth_bloc.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:medibuddy/screens/home_screen.dart';
import 'package:medibuddy/screens/registration_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: unused_field
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = Provider.of<AuthBloc>(context);
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
                      onChanged: (value) {
                        setState(() {
                          email = value;
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
                        final currentuser = await authBloc
                            .loginWithEmailPassword(email, password);

                        if (currentuser) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamedAndRemoveUntil(
                              context, HomeScreen.id, (route) => false);
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
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                            text: 'New member? ',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        TextSpan(
                            text: 'Register',
                            style: const TextStyle(
                              color: kBottomContainerColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, RegistrationScreen.id);
                              }),
                      ]),
                    ),
                  ),
                  const Text("Or, Sign in with:\n"),
                  IconButton(
                    onPressed: () async {
                      try {
                        final currentuser = await authBloc.loginWithGoogle();

                        if (currentuser) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamedAndRemoveUntil(
                              context, HomeScreen.id, (route) => false);
                        }
                      } catch (e) {
                        if (kDebugMode) {
                          print(e);
                        }
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      size: 30.0,
                      color: kPrimaryColor,
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
