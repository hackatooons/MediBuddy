import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medibuddy/blocs/auth_bloc.dart';
import 'package:medibuddy/screens/home_screen.dart';
import 'package:medibuddy/screens/login_screen.dart';
import 'package:provider/provider.dart';

class OnBoardingPage extends StatefulWidget {
  static const id = 'onboarding_screen';

  const OnBoardingPage({Key? key}) : super(key: key);
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  void initState() {
    super.initState();
    Future(() => {
          _auth.currentUser?.getIdToken().then(
            (value) {
              if (kDebugMode) {
                print(value);
              }
              // Push home screen if user is logged in
              if (value.isNotEmpty) {
                Navigator.pushNamed(context, HomeScreen.id);
              }
            },
          )
        });
  }

  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, LoginScreen.id);
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Medibuddy",
          body:
              "More than just a platform, Medibuddy is a platform that helps you to take care of your medical needs.",
          image: _buildImage('animation2.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Caring simplified and secure",
          body:
              "Get notified when your doctor is available and get connected with your doctor.",
          image: _buildImage('animation.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body: "Counsel your kids and teens with the help of our platform.",
          image: _buildImage('animation2.gif'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
