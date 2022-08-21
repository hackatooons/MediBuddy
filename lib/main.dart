import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:medibuddy/screens/counsel_screen.dart';
import 'package:medibuddy/screens/home_screen.dart';
import 'package:medibuddy/screens/license_screen.dart';
import 'package:medibuddy/screens/login_screen.dart';
import 'package:medibuddy/screens/onboarding_screen.dart';
import 'package:medibuddy/screens/heart_predict_screen.dart';
import 'package:medibuddy/screens/bmi_screen.dart';
import 'package:medibuddy/screens/ppg_screen.dart';
import 'package:medibuddy/screens/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:medibuddy/screens/breast_cancer_prediction.dart';

import 'blocs/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MediBuddy',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ThemeData.light().colorScheme.copyWith(
                primary: kPrimaryColor,
                secondary: kSecondaryColor,
                onSecondary: kTextColor,
              ),
          fontFamily: 'Roboto',
          // default text style
        ),
        initialRoute: OnBoardingPage.id,
        routes: {
          OnBoardingPage.id: (context) => const OnBoardingPage(),
          HomeScreen.id: (context) => const HomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          BMICalculator.id: (context) => const BMICalculator(),
          Counsel.id: (context) => const Counsel(),
          Ppgscreen.id: (context) => const Ppgscreen(),
          HeartPredict.id: (context) => const HeartPredict(),
          BreastCancerPredict.id: (context) => const BreastCancerPredict(),
          SettingsScreen.id: (context) => const SettingsScreen(),
          LicenseScreen.id: (context) => const LicenseScreen(
                versionName: '1.0.0',
              ),
        },
      ),
    );
  }
}
