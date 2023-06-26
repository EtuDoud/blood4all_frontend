import 'package:blood4all/Screens/resultScreen/widgets/homeBody.dart';

import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: HomeBody(),
    );

    /*
    Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                       Container(
                         padding: EdgeInsets.only(left: 16, right: 16, top: 60),
                         width: MediaQuery.of(context).size.width,
                         height: 250,
                         color: Color(0xff153565),
                         child: Column(
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   children: [
                                     Text("Hello!", style: TextStyle(color: Colors.white, fontSize: 16)),
                                     SizedBox(
                                       height: 8,
                                     ),
                                     Text("Shahin Alam", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                                 Container(
                                   height: 50,
                                   width: 50,
                                   color: Colors.orange,
                                 )
                               ],
                             ),
                             SizedBox(height: 50,),
                             Container(
                                 decoration: BoxDecoration(
                                     border: Border.all(
                                         color: Colors.grey,
                                         width: 1.0
                                     ),
                                     borderRadius: BorderRadius.circular(8.0)
                                 ),
                                 padding: EdgeInsets.symmetric(horizontal: 10.0),
                                 child:  TextFormField(
                                   keyboardType: TextInputType.text,
                                   decoration: InputDecoration(
                                       hintText: "Recherchez du sang",
                                       hintStyle: TextStyle(color: Colors.white),
                                       prefixIcon: Icon(Icons.search, color: Colors.white,)
                                   ),
                                 )
                             ),
                           ],
                         ),
                       ),
                       Positioned(
                         child: Container(
                           width: 343,
                           height: 201,
                           padding: EdgeInsets.all(16),
                           margin: EdgeInsets.all(16),
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Text("Groupe sanguain"),
                                 ],
                               ),
                               SizedBox(
                                 height: 20,
                               ),
                               Row(
                                 children: [
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),textAlign: TextAlign.center, ),
                                   ),
                                   SizedBox(width: 10,),
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),),
                                   ),
                                   SizedBox(width: 10,),
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               ),
                               SizedBox(
                                 height: 10,
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),textAlign: TextAlign.center, ),
                                   ),
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),),
                                   ),
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),),
                                   ),
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),),
                                   ),
                                   Container(
                                     height: 50,
                                     width: 50,
                                     color: Colors.orange,
                                     child: Text("A+", style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                      Container(
                        color: Colors.grey,
                        height: 135,
                        width: 343,
                        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                        margin: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.orange,
                                ),
                                Column(
                                  children: [
                                    Text("Nom de la banque de Sang"),
                                    SizedBox(height: 5,),
                                    Text("Adresse de la banque"),
                                    SizedBox(height: 5,),
                                    Text("20min"),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Text("Disponibilie Critique",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    Container(
                  color: Colors.grey,
                  height: 135,
                  width: 343,
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 22),
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.orange,
                          ),
                          Column(
                            children: [
                              Text("Nom de la banque de Sang"),
                              SizedBox(height: 5,),
                              Text("Adresse de la banque"),
                              SizedBox(height: 5,),
                              Text("20min"),
                            ],
                          )
                        ],
                      ),
                      Text("Disponibilie Critique",style: TextStyle(color: Colors.red),)
                    ],
                  ),
                ),
                    Container(
                  color: Colors.grey,
                  height: 135,
                  width: 343,
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 22),
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.orange,
                          ),
                          Column(
                            children: [
                              Text("Nom de la banque de Sang", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),),
                              SizedBox(height: 5,),
                              Text("Adresse de la banque", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),),
                              SizedBox(height: 5,),
                              Text("20min", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
                            ],
                          )
                        ],
                      ),
                      Text("Disponibilie Critique",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, ),)
                    ],
                  ),
                ),
                  ],
            )
          ),
      ),
    );
  */
  }
}
