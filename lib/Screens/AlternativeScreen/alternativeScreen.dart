
import 'package:flutter/material.dart';

class AlternativeScreen extends StatefulWidget {
  const AlternativeScreen({Key? key}) : super(key: key);

  @override
  State<AlternativeScreen> createState() => _AlternativeScreenState();
}

class _AlternativeScreenState extends State<AlternativeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 80),
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Color(0xff153565),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Icon"),
                    SizedBox(width: 40,),
                    Text("Choisissez une Alternative", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16), textAlign: TextAlign.center, )
                  ],
                ),
                Padding( padding:EdgeInsets.only(top: 60, bottom: 15) ,
                    child: Text("Recherchez avec BLOOD4ALL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,)),
                Text("Veuillez choisir un des groupes\n sanguins ci-dessous", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal), textAlign: TextAlign.center,)
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top:130 , left: 26, right: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Le groupe demande n'est pas disponible vous pouvez rechercher un des groupes suivant",
                    style: TextStyle(color: Color(0xff12233D), fontWeight: FontWeight.w500, fontSize: 16),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
