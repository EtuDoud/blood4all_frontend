import 'package:blood4all/Screens/resultScreen/widgets/fields/password_field.dart';
import 'package:blood4all/Screens/resultScreen/widgets/fields/textfield.dart';

import 'package:blood4all/Screens/utils/constants.dart';
import 'package:blood4all/Screens/utils/validators.dart';
import 'package:blood4all/Widgets/button.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    key = LabeledGlobalKey<FormState>("LOGIN");
  }

  bool isPasswordVisible = true;
  bool isLogging = false;
  late LabeledGlobalKey<FormState> key;
  bool shouldValidate = false;

  late String email;
  late String password;

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/logo.png"),
                    const Text(
                      "Connexion",
                      style: TextStyle(
                        color: Color(0xFF12233D),
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                CustomTextField(
                  hintText: 'Email',
                  inputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (Validators.isEmail(value)) {
                      return null;
                    }
                    return "Email non valide";
                  },
                  onSaved: (value) {
                    email = value!;
                  },
                ),
                const SizedBox(height: 10),
                CustomPasswordField(
                  isPasswordVisible: isPasswordVisible,
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  validator: (value) {
                    if (Validators.isPassword(value)) {
                      return null;
                    }
                    return "Le mot de passe doit contenir au moins 8 caractères";
                  },
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: const Text(
                          'Mot de passe oublié?',
                          style: TextStyle(color: kTitleColor),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 45),
                CustomButton(
                  onTap: () {
                    setState(() {
                      shouldValidate = true;
                    });
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      setState(() {
                        isLogging = true;
                      });
                    }
                  },
                  text: "Connexion",
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Vous n\'avez pas de compte?',
                      style: TextStyle(color: kTextColor),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      child: const Text(
                        'Inscrivez-vous',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
