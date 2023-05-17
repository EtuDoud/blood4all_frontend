import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  Onboarding1State createState() => Onboarding1State();
}

class Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
              height: size.height,
              width: size.width,
              margin: const EdgeInsets.only(
                  top: 32, left: 32, right: 32, bottom: 103),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 32),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Image.asset("assets/images/perso.jpg")
                              ],
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const Text(
                              "Entrer les paramètres de recherche",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color(0xff1C3665)),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                                "Groupe Sanguin, Facteur Rhésus, Poids, Age...",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff424242))),
                            const SizedBox(
                              height: 80,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("salut");
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(217, 31, 38, 1),
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16, left: 48, right: 48),
                                  fixedSize: const Size(279, 56),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: const Text(
                                "Suivant",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      top: 120,
                      right: 12,
                      child: Image.asset("assets/images/pocheSang.png")),
                ],
              ))),
    );
  }
}
