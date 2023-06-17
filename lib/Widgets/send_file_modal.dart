import 'package:flutter/material.dart';

class SendFileModal extends StatelessWidget {
  const SendFileModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( color: Color(0xff737373), borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 4,
          ),
          Center(
            child: Container(
              height: 4,
              width: 50,
              color: Colors.grey.shade200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color(0xff153565)),
                    child: Icon(Icons.add_a_photo_outlined, color: Colors.red, size: 25,),
                  ),
                  title: Text("xender", style: TextStyle(color: Colors.white, fontSize: 16),),
                ),

              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color(0xff153565)),
                    child: Icon(Icons.account_balance, color: Colors.red, size: 25,),
                  ),
                  title: Text("whatsapp", style: TextStyle(color: Colors.white, fontSize: 16),),
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}
