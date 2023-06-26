import 'package:blood4all/Models/blood_model.dart';
import 'package:blood4all/Screens/resultScreen/widgets/card.dart';

import 'package:blood4all/Screens/resultScreen/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Header(size: size),
      ),
     

       SliverToBoxAdapter(
        child: Container(
          height: size.height*0.45,
          child: ListView.builder(
            itemCount: BloodModel.bloods.length,
            itemBuilder: (context, index) {
              return BloodCard(blood: BloodModel.bloods[index]);
            },
          ),
        ),
    
      )
    
    ]);
  }
}
