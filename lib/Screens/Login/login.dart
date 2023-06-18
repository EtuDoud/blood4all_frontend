
import 'package:blood4all/Screens/sign/signUp.dart';
import 'package:flutter/material.dart';


import 'Widgets/textField.dart';

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

  bool isPasswordvisible = true;
  late String email;
  late String password;
  bool passwordVisible = true;
  late LabeledGlobalKey<FormState> key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: key,
                  child: Column(
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
                        height: 55,
                      ),

                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0
                                ),
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child:  FormTextField(text: "Email",)
                          ),

                          SizedBox(
                            height: 15,
                          ),

                         Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0
                                ),
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: FormpasswordField(text: "Password", isPasswordVisible: isPasswordvisible, onPressed: () {
                              setState(() {
                                isPasswordvisible = !isPasswordvisible;
                              });
                            },)
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEF4923),
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 16, left: 48, right: 48),
                            fixedSize: const Size(279, 56),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () { 
                          
                         },
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
                      height: 20,
                    ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vous n'aviez pas encore un compte?",),
                            Text("Inscrivez vous", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),)
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ),
          ),
          ),
    );
  }
}
