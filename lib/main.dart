



import 'package:blood4all/Screens/Login/login.dart';
import 'package:blood4all/Screens/sign/signUp.dart';
import 'package:flutter/material.dart';

import 'Screens/utils/constants.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: kPrimaryColor,
          ),
          cardColor: kCardColor,
          indicatorColor: kBackgroundColor,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: kAppbarColor),
          ),
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: kAppbarColor,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: kPrimaryColor,
            selectionColor: kPrimaryColor.withOpacity(.3),
            selectionHandleColor: kPrimaryColor,
          ),
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kBorderColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: kPrimaryColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: kErrorColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: kErrorColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: kBorderColor),
            ),
            //fillColor: kPrimaryLightColor,
            //filled: true,
            contentPadding: EdgeInsets.all(20),
            hintStyle: TextStyle(color: Color(0XFF9E9E9E)),
          ),
        ),
      
      
       
        debugShowCheckedModeBanner: false,
        home:LoginScreen());
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
