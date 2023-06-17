import 'package:blood4all/Onboarding/onboardingScreen.dart';
import 'package:blood4all/Screens/ResearchScreen/search.dart';
import 'package:blood4all/Screens/Signup/signup.dart';
import 'package:blood4all/Screens/SplashScreen/splashscreen.dart';

import 'package:flutter/material.dart';

import 'Screens/AlternativeScreen/alternativeScreen.dart';
import 'Screens/Login/login.dart';
import 'Screens/qrcode_screen/qrcode_screen.dart';
import 'Screens/resultScreen/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        color: Colors.amber,
        debugShowCheckedModeBanner: false,
        home: QrcodeScreen());
  }
}

// Widget Bouton() {
//   return const ElevatedButton(
//       onPressed: null,
//       child: Text(
//         "Suivant",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
//       ));
// }
