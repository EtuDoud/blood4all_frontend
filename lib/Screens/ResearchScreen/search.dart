import 'package:blood4all/Screens/Login/Widgets/textField.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 60),
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Color(0xff153565),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Icon"),
                    SizedBox(width: 40,),
                    Text("Formulaire de recherche", style: TextStyle(color: Colors.white), textAlign: TextAlign.center, )
                  ],
                ),
                SizedBox(height: 70,),
                Text("Recherchez avec BLOOD4ALL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text("Veuillez fournir les informations demandees ci-dessous", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal), textAlign: TextAlign.center,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 81, left: 17, right: 17),
            child: Form(
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:  FormTextField(text: "Email",)
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:  FormTextField(text: "Email",)
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:  FormTextField(text: "Email",)
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:  FormTextField(text: "Email",)
                  ),
                ],
              ),
            ),
          )
        ],
      ) ,
    );                                                                                                                                                                                                                                                          Placeholder();
  }
}
