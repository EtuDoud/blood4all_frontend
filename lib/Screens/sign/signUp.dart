import 'package:blood4all/Screens/sign/tabs/doctor/doctor.dart';
import 'package:blood4all/Screens/sign/tabs/user/user.dart';
import 'package:flutter/material.dart';

import 'tabs/blood_bank/blood_bank.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Insription"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Patient", icon: Icon(Icons.category_outlined)),
              Tab(text: "Médécin", icon: Icon(Icons.nature_outlined)),
              Tab(
                  text: "Bank de Sang",
                  icon: Icon(Icons.home_repair_service_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          children: [UserSignUp(), DoctorSignUp(), BloodBankSignUp()],
        ),
      ),
    );
  }
}
