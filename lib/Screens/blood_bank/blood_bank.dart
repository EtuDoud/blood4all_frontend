import 'package:flutter/material.dart';

class BloodBankPage extends StatefulWidget {
  const BloodBankPage({super.key});

  @override
  State<BloodBankPage> createState() => _BloodBankPageState();
}

class _BloodBankPageState extends State<BloodBankPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Blood Page")),
    );
  }
}
