import 'package:blood4all/Screens/Login/Widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Login/Widgets/password_field.dart';
import '../Login/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    key = LabeledGlobalKey<FormState> ("LOGIN");
  }

  late String email;
  late String name;
  late String telephone; // ajouter la validation du numero de telephone
  late String matricule;
  late String password;
  bool passwordVisible = true;
  late LabeledGlobalKey<FormState> key;


  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(),
    );

  }
}
