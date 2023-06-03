import 'package:blood4all/Screens/Login/Widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Login/Widgets/password_field.dart';

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
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Form(
          key: key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 23,
                ),
                const Text(
                  "Inscription",
                  style: TextStyle(
                    color: Color(0xFF12233D),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomTextField(placeholder: "Nom et Prenom", inputType: TextInputType.text, validator:(p0) {
                    if(p0 == null) {
                      return "Champ requis";
                    }
                    return "correct";
                  }, onSaved:(p0) {
                    name = p0!;
                  }, ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomTextField(placeholder: "Telephone", inputType: TextInputType.text, validator:(p0) {
                    if(p0 == null) {
                      return "Champ requis";
                    }
                    return "correct";
                  }, onSaved:(p0) {
                    telephone = p0!;
                  }, ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomTextField(placeholder: "Email", inputType: TextInputType.text, validator:(p0) {
                    if(p0 == null) {
                      return "Champ requis";
                    }
                    return "correct";
                  }, onSaved:(p0) {
                    email = p0!;
                  }, ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomTextField(placeholder: "Matricule", inputType: TextInputType.text, validator:(p0) {
                    if(p0 == null) {
                      return "Champ requis";
                    }
                    return "correct";
                  }, onSaved:(p0) {
                    matricule = p0!;
                  }, ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomPasswordField( isVisibleIcon : passwordVisible, placeholder: "Mot de passe", onpressed: () {
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
                  },),
                ),
                const SizedBox(
                  height: 48,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEF4923),
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, left: 48, right: 48),
                        fixedSize: const Size(279, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {  },
                    child: const Text(
                      "Envoyez",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: (){

                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Vous aviez un compte',
                            style: TextStyle(
                              fontSize: 12,
                            ) ,
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
