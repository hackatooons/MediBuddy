import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:medibuddy/screens/home_screen.dart';
import 'package:medibuddy/screens/login_screen.dart';
import 'package:medibuddy/screens/onboarding_screen.dart';
import 'package:medibuddy/screens/bmi_screen.dart';
import 'package:provider/provider.dart';

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
          colorScheme: const ColorScheme(
            primary: kPrimaryColor,
            secondary: kSecondaryColor,
            surface: kBackgroundColor,
            background: kBackgroundColor,
            error: kPrimaryColor,
            onPrimary: Colors.white,
            onSecondary: Colors.black38,
            onSurface: kTextColor,
            onBackground: kSecondaryColor,
            onError: Colors.redAccent,
            brightness: Brightness.light,
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
        },
      ),
    );
  }
}
