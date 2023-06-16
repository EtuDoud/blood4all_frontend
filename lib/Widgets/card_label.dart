import 'package:flutter/material.dart';

class CardLabels extends StatelessWidget {
  final String data;
  //final String dataType;
  final IconData icon;
  final Color color;
  const CardLabels({
    super.key,
    required this.data,
    required this.icon,
    required this.color,
   // required this.dataType,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        RichText(
          text: TextSpan(
             // text: "$dataType: ",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
               
                TextSpan(
                  text: data,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ]),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        
      ],
    );
  }
}
