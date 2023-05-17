import 'package:flutter/material.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  Onboarding2State createState() => Onboarding2State();
}

class Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: size.height,
        width: size.width,
        margin:
            const EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 103),
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
                  Image.asset("assets/images/atelier.jpg"),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "Trouvez des banques de sang",
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
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("salut");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEF4923),
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
  }
}
