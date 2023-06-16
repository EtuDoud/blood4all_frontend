import 'package:blood4all/Screens/resultScreen/widgets/header.dart';
import 'package:flutter/material.dart';






class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(size: size),
        
          
        ],
      ),
    );
  }
}
