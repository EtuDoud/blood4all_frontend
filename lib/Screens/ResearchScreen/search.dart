
import 'package:blood4all/Screens/resultScreen/widgets/fields/search_bar.dart';
import 'package:blood4all/Screens/resultScreen/widgets/fields/textfield.dart';
import 'package:flutter/material.dart';

import '../../Models/blood_info.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //creer les variables
  int elementActifIndex = -1;
  bool active = false;
  List<String> groupe = ['A+', 'B+', 'AB+', 'AB-', 'O+', 'O-'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 80),
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Color(0xff153565),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text("Formulaire de recherche", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16), textAlign: TextAlign.center, )),
                  Padding( padding:EdgeInsets.only(top: 60, bottom: 15) ,
                      child: Text("Recherchez avec BLOOD4ALL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,)),
                  Text("Veuillez fournir les informations \n demandees ci-dessous", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal), textAlign: TextAlign.center,)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 16, right: 16),
              child: Container(
                child: Form(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 8),child: Text("Volum (ml)", style: TextStyle(color: Color(0xff3A3A3A), fontWeight: FontWeight.w600, fontSize: 13),)),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 1.0
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child:  SearchBar( searchText: 'Volum',)
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 8),child: Text("Nombre d'Unite", style: TextStyle(color: Color(0xff3A3A3A), fontWeight: FontWeight.w600, fontSize: 13),)),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0
                                    ),
                                    borderRadius: BorderRadius.circular(30.0)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: CustomTextField(hintText: "Email",)
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 8),child: Text("Type de sang", style: TextStyle(color: Color(0xff3A3A3A), fontWeight: FontWeight.w600, fontSize: 13),)),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 1.0
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child:  CustomTextField(hintText: "Selectionner le type de sang",)
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(bottom: 8),child: Text("Poids", style: TextStyle(color: Color(0xff3A3A3A), fontWeight: FontWeight.w600, fontSize: 13),)),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0
                                    ),
                                    borderRadius: BorderRadius.circular(30.0)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child:  CustomTextField(hintText: "Entrez le poids du patient",)
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 8),child: Text("Groupe sanguin", style: TextStyle(color: Color(0xff3A3A3A), fontWeight: FontWeight.w600, fontSize: 13),)),
                          Container(
                              height: 200,
                              child: GridView.builder(
                                itemCount: BloodInfo.groupeSanguin.length,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemBuilder: (context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      BloodInfo.groupeSanguin[index].active = !BloodInfo.groupeSanguin[index].active;
                                    });
                                  },
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: BloodInfo.groupeSanguin[index].active?Color(0xffDD989E):Color(0xffE9EEF6) ),
                                        child: Center(child: Text(BloodInfo.groupeSanguin[index].groupe, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)),
                                      ),
                                    ),
                                );
                              },),
                            )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 70, bottom: 60),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffEF4923),
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 16, left: 48, right: 48),
                                fixedSize: const Size(279, 56),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {  },
                            child: const Text(
                              "Recherchez",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ) ,
    );                                                                                                                                                                                                                                                          Placeholder();
  }
}
