import 'package:blood4all/Models/blood_model.dart';
import 'package:blood4all/Widgets/card_label.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatefulWidget {
  final BloodModel blood;
  const ProductCard({
    super.key,
    required this.blood,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () async {
       
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
             ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        
      ),
    ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     CardLabels(
                      icon: Icons.approval,
                      // dataType: "Nom",
                      data: widget.blood.bloodBank.adresse,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    CardLabels(
                      icon: Icons.approval,
                      // dataType: "Nom",
                      data: widget.blood.bloodBank.adresse,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    
                      CardLabels(
                            // dataType: 'TTC',
                            icon: Icons.access_time,
                            data: double.parse(widget.blood.delayTime)
                                .toStringAsFixed(2),
                            color:  Colors.blue,
                          ),
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    }
}
