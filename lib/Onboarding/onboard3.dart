import 'package:flutter/material.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  Onboarding3State createState() => Onboarding3State();
}

class Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: size.height,
        width: size.width,
        margin: const EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 80),
        child: Column(
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
                  Image.asset("assets/images/qrcode.jpg"),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "Générer le code aléatoire en un clic",
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
                      "A proximité et répondant aux critères de recherches",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff424242))),
                  const SizedBox(
                    height: 64,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("salut");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(217, 31, 38, 1),
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
      )),
    );
    ;
  }
}
