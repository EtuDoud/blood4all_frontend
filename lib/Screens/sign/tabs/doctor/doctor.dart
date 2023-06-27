// ignore_for_file: use_build_context_synchronously

import 'package:blood4all/Screens/Login/login.dart';
import 'package:blood4all/Screens/resultScreen/widgets/fields/password_field.dart';
import 'package:blood4all/Screens/resultScreen/widgets/fields/textfield.dart';
import 'package:blood4all/Screens/searchscreen/researchscreen.dart';
import 'package:blood4all/Screens/utils/validators.dart';
import 'package:blood4all/Widgets/button.dart';
import 'package:blood4all/core/controllers/login_controller.dart';
import 'package:blood4all/core/service/parse_result.dart';
import 'package:blood4all/core/utils/app_func.dart';
import 'package:flutter/material.dart';

class DoctorSignUp extends StatefulWidget {
  const DoctorSignUp({Key? key}) : super(key: key);

  @override
  State<DoctorSignUp> createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  late String email;
  late String name;
  late String telephone; // ajouter la validation du numero de telephone
  late String matricule;
  late String password;
  late String hospital;
  late String numOrdreNational;
  late String addresse;
  bool isPasswordVisible = true;

  bool isLogging = false;
  late LabeledGlobalKey<FormState> key;
  bool shouldValidate = false;

  @override
  void initState() {
    super.initState();
    key = LabeledGlobalKey<FormState>("SIGNUP");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Form(
          key: key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 23,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomTextField(
                  hintText: "Nom et Prenom",
                  inputType: TextInputType.text,
                  validator: (p0) {
                    if (p0 == null) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  onSaved: (p0) {
                    name = p0!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hintText: "Hôpital",
                  inputType: TextInputType.text,
                  validator: (p0) {
                    if (p0 == null) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  onSaved: (p0) {
                    hospital = p0!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                //addresse
                CustomTextField(
                  hintText: "Adresse",
                  inputType: TextInputType.text,
                  validator: (p0) {
                    if (p0 == null) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  onSaved: (p0) {
                    addresse = p0!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hintText: "Numéro d'ordre national",
                  inputType: TextInputType.text,
                  validator: (p0) {
                    if (p0 == null) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  onSaved: (p0) {
                    numOrdreNational = p0!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hintText: "Telephone",
                  inputType: TextInputType.text,
                  validator: (p0) {
                    if (p0 == null) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  onSaved: (p0) {
                    telephone = p0!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hintText: "Email",
                  inputType: TextInputType.text,
                  validator: (p0) {
                    if (p0 == null) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  onSaved: (p0) {
                    email = p0!;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
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
                const SizedBox(
                  height: 48,
                ),
                CustomButton(
                  onTap: () async {
                    setState(() {
                      shouldValidate = true;
                    });
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      setState(() {
                        isLogging = true;
                      });
                      Map<String, dynamic> data = {
                        "name": name,
                        "email": email,
                        "addresse": addresse,
                        "telephone": telephone,
                        "password": password,
                        "numOrdreNational": "NUM/0000/ONMB/DEP/AAAA",
                        "hopital": hospital,
                      };

                      FetchData f = await LoginController().login(
                          "https://blood4all-backend.vercel.app/api/auth/doctor/signup",
                          data);

                      if (f.error == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Création de compte avec succès !",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                        navigateToNextPage(context, const MyFormPage());
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Erreur de création de compte",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }
                      //
                      setState(() {
                        isLogging = false;
                      });
                    }
                  },
                  child: Center(
                    child: isLogging
                        ? const CircularProgressIndicator()
                        : const Text(
                            "Envoyer",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                  ),
                ),

                /*
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEF4923),
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, left: 48, right: 48),
                        fixedSize: const Size(279, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {},
                    child: const Text(
                      "Envoyez",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )),
                */
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Vous aviez un compte',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Connexion',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
