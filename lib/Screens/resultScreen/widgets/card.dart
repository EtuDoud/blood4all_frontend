import 'package:blood4all/Models/blood_model.dart';
import 'package:blood4all/Widgets/card_label.dart';
import 'package:blood4all/Widgets/text_custom.dart';
import 'package:flutter/material.dart';

class BloodCard extends StatelessWidget {
  final BloodModel blood;
  const BloodCard({
    super.key,
    required this.blood,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
      child: InkWell(
        onTap: () async {},
        child: Card(
          child: Container(
            height: 120,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.apartment_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                        backgroundColor: Color.fromRGBO(233, 238, 246, 1),
                        radius: 30,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCustom(
                              text: blood.bloodBank.name,
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            width: size.width * 0.1,
                            height: 5,
                          ),
                          CardLabels(
                            icon: Icons.approval,
                            // dataType: "Nom",
                            data: blood.bloodBank.adresse,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: size.width * 0.1,
                            height: 5,
                          ),
                          CardLabels(
                            // dataType: 'TTC',
                            icon: Icons.access_time,
                            data: "${blood.delayTime} min",
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: blood.isAvailable
                      ? Text("Disponible!")
                      : Text(
                          "Disponibilité critique!",
                          style: TextStyle(color: Colors.red),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
      child: InkWell(
        onTap: () async {},
        child: Card(
          child: Container(
            height: 120,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.apartment_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                        backgroundColor: Color.fromRGBO(233, 238, 246, 1),
                        radius: 30,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCustom(
                              text: blood.bloodBank.name,
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            width: size.width * 0.1,
                            height: 5,
                          ),
                          CardLabels(
                            icon: Icons.approval,
                            // dataType: "Nom",
                            data: blood.bloodBank.adresse,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: size.width * 0.1,
                            height: 5,
                          ),
                          CardLabels(
                            // dataType: 'TTC',
                            icon: Icons.access_time,
                            data: "${blood.delayTime} min",
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: blood.isAvailable
                      ? Text("Disponible!")
                      : Text(
                          "Disponibilité critique!",
                          style: TextStyle(color: Colors.red),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
 */
