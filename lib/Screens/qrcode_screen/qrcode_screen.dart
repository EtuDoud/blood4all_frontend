
import 'package:flutter/material.dart';

import '../../Widgets/send_file_modal.dart';

class QrcodeScreen extends StatefulWidget {
  const QrcodeScreen({Key? key}) : super(key: key);

  @override
  State<QrcodeScreen> createState() => _QrcodeScreenState();
}

class _QrcodeScreenState extends State<QrcodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 120, left: 40, right: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("QR code", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),),
                  Center(child: Padding(padding: EdgeInsets.only(top: 10, bottom: 95),child: Text("Presentez ce code a \n un Agent", textAlign: TextAlign.center,))),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent,),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40, bottom: 40),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEF4923),
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 16, left: 30, right: 30),
                            fixedSize: const Size(220, 55),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {  },
                        child: const Text(
                          "Imprimer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        )
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
                            backgroundColor: Colors.black,
                            isScrollControlled: true,
                            context: context, builder: (context) {
                              return SendFileModal();
                          },);
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Color(0xff153565)),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text("Partagez")
                    ],
                  )
              ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
