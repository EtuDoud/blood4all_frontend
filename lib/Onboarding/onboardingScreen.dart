import 'package:blood4all/Models/Onboarding_Models.dart';
import 'package:blood4all/Screens/Login/login.dart';
import 'package:blood4all/Widgets/dotindicator.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 10),
            child: Column(children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: size.height / 1.0,
                width: size.width,
                child: PageView.builder(
                  itemCount: onboardingModels.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          onboardingModels[index].imagePath)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    onboardingModels[index].title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Color(0xff1C3665)),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(onboardingModels[index].subTitle,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Color(0xff424242))),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DotIndicator(
                                    currentIndex: 0, position: currentIndex),
                                const SizedBox(
                                  width: 12,
                                ),
                                DotIndicator(
                                    currentIndex: 1, position: currentIndex),
                                const SizedBox(
                                  width: 12,
                                ),
                                DotIndicator(
                                    currentIndex: 2, position: currentIndex)
                              ],
                            ),
                            const SizedBox(
                              height: 48,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if(currentIndex == 2) {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffEF4923),
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16, left: 48, right: 48),
                                  fixedSize: const Size(279, 56),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: currentIndex == 2
                                  ? const Text(
                                      "Commencer",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    )
                                  : const Text(
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
                        if (currentIndex == 0)
                          Positioned(
                              top: -40,
                              right: 12,
                              child:
                                  Image.asset("assets/images/pocheSang.png")),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}
