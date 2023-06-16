//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blood4all/Widgets/text_custom.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int groupValue = 0;
  bool isGroupSelected = false;
  List<String> bloodGroup = [
    "A+","A-","B+","B-","O-","O+","AB+","AB-"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
    
      margin: const EdgeInsets.only(bottom: 20 * 2.5),
      height: widget.size.height * 0.4,
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 36 + 20),
          height: widget.size.height * 0.2,
          decoration: const BoxDecoration(
            color: Color(0xff153565),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Hello!",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Shahin Alam",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/images/user.png")),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Color.fromARGB(255, 194, 33, 22),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 70,
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xFF0C9869).withOpacity(0.23),
                      )
                    ]),
                child: Row(children: [
                  Icon(Icons.search),
                  Expanded(
                      child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        hintText: "Rechercher un sang",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 163, 167, 170)
                              .withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  )),
                  const Icon(Icons.compare_arrows_rounded)
                ]))),
        Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            top: 135,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 20,),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              //height: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xFF0C9869).withOpacity(0.23),
                    )
                  ]),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCustom(text: 'Groupe Sanguin'),
                  Wrap(
                    children: List<Widget>.generate(bloodGroup.length, (index) {
                      return Container(
                      
                       
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: ChoiceChip(
                          
                        
                        
                          backgroundColor: Color.fromRGBO(233, 238, 246, 1),
                          selectedColor: Color.fromRGBO(235, 158, 164, 0.1),
                          shape: RoundedRectangleBorder(
                        
                          
                              borderRadius: BorderRadius.circular(8)),
                          labelStyle: TextStyle(
                            color: index == groupValue
                                ? Colors.black
                                : Colors.black,
                          ),
                          label: Text(
                            bloodGroup[index],
                            style: TextStyle(fontSize: 14),
                          ),
                          selected: groupValue == index,
                          onSelected: (value) {
                            setState(() {
                              isGroupSelected = value;
                              groupValue = value ? index : 0;
                            });
                          },
                        
                        ),
                      );
                    }),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
