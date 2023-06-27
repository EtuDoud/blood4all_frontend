// ignore_for_file: use_build_context_synchronously

import 'package:blood4all/Screens/blood_bank/blood_bank.dart';
import 'package:blood4all/Screens/dashboard/dashboard.dart';
import 'package:blood4all/Screens/resultScreen/widgets/fields/password_field.dart';
import 'package:blood4all/Screens/resultScreen/widgets/fields/textfield.dart';
import 'package:blood4all/Screens/searchscreen/researchscreen.dart';
import 'package:blood4all/Screens/sign/signUp.dart';
import 'package:blood4all/Screens/utils/constants.dart';
import 'package:blood4all/Screens/utils/validators.dart';
import 'package:blood4all/Widgets/button.dart';
import 'package:blood4all/core/controllers/login_controller.dart';
import 'package:blood4all/core/service/parse_result.dart';
import 'package:blood4all/core/utils/app_func.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    key = LabeledGlobalKey<FormState>("LOGIN");
  }

  String? _selectedVolume;
  final List<String> _volumes = ["Banque de sang", "Médécin", "Patient"];

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
                const SizedBox(
                  height: 60,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 5.0),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedVolume ?? _volumes[0],
                    items: _volumes.map((String volume) {
                      return DropdownMenuItem<String>(
                        value: volume,
                        child: Text(volume.toString()),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedVolume = newValue;
                      });
                    },
                  ),
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
                        "email": email,
                        "password": password
                      };

                      Map<String, String> map = {
                        "Banque de sang":
                            "https://blood4all-backend.vercel.app/api/auth/bloodbank/signin",
                        "Médécin":
                            "https://blood4all-backend.vercel.app/api/auth/doctor/signin",
                        "Patient":
                            "https://blood4all-backend.vercel.app/api/auth/user/signin",
                      };

                      FetchData f = await LoginController()
                          .login(map[_selectedVolume]!, data);

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
                        navigateToNextPage(
                            context,
                            _selectedVolume == "Banque de sang"
                                ? const BankBloodDashboardScreen()
                                : _selectedVolume == "Médécin"
                                    ? const MyFormPage()
                                    : const BloodBankPage(),
                            back: false);
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
                const SizedBox(
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ));
                      },
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
