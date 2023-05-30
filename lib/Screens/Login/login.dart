import 'package:blood4all/Screens/Login/Widgets/password_field.dart';
import 'package:blood4all/Screens/Login/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class   LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    key = LabeledGlobalKey<FormState> ("LOGIN");
  }

  late String email;
  late String password;
  bool passwordVisible = true;
  late LabeledGlobalKey<FormState> key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: key,
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                height: 23,
              ),
              Text(
                "Connexion",
                style: TextStyle(
                  color: Color(0xFF12233D),
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(placeholder: "Email ou numero de telephone", inputType: TextInputType.text, validator:(p0) {
                  if(p0 == null) {
                    return "Champ requis";
                  }
                  return "correct";
              }, onSaved:(p0) {
                email = p0!;
              }, ),

              CustomPasswordField( isVisibleIcon : passwordVisible, placeholder: "Mot de passe", onpressed: () {
                setState(() {
                  passwordVisible = false;
                });
              }, onSaved: (p0) {
                password = p0!;
              }, validator: (p0) {
                if(p0 == null) {
                  return "Champ requis";
                }
                return "correct";
              },)
            ],
          ),
        ),
      ),
    );
  }
}
