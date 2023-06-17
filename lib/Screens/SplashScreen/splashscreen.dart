import 'package:blood4all/Onboarding/onboardingScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 10),
        () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboardingScreen()));
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/OnboardLogo.png"),
            ),
            SizedBox(
              height: 8,
            ),
            const SpinKitThreeBounce(
              color: Colors.red,
              size: 30.0,
          ),
          ],
        ),
      ),
    );
  }
}
