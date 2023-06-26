// import 'package:blood4all/Screens/qrcode_screen/qrcode_screen.dart';
// import 'package:blood4all/Screens/resultScreen/widgets/fields/textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import '../../Widgets/button.dart';
// import '../utils/constants.dart';
//
// class ReserveScreen extends StatefulWidget {
//   const ReserveScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ReserveScreen> createState() => _ReserveScreenState();
// }
//
// class _ReserveScreenState extends State<ReserveScreen> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   final formKey = GlobalKey<FormState>();
//   late String firstname;
//   late String lastname;
//   late String phone;
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 16, right: 16, top: 80),
//             width: MediaQuery.of(context).size.width,
//             height: 250,
//             color: Color(0xff153565),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                Center(
//                  child: Text("Formulaire de recherche", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16), textAlign: TextAlign.center, ),
//                ),
//                 Padding( padding:EdgeInsets.only(top: 60, bottom: 15) ,
//                     child: Text("Recherchez avec BLOOD4ALL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,)),
//                 Text("Veuillez fournir les informations \n demandees ci-dessous", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal), textAlign: TextAlign.center,)
//               ],
//             ),
//           ),
//           Form(
//             key: formKey,
//             child: Column(
//               children: [
//                 CustomTextField(
//                   hintText: 'Nom',
//                   inputType: TextInputType.text,
//                   onSaved: (value) {
//                     firstname = value!;
//                   },),
//                 CustomTextField(
//                   hintText: 'Prenom',
//                   inputType: TextInputType.text,
//                   onSaved: (value) {
//                     lastname = value!;
//                   },),
//                 CustomTextField(
//                   hintText: 'Telephone',
//                   inputType: TextInputType.text,
//                   onSaved: (value) {
//                     phone = value!;
//                   },),
//                 CustomButton(
//                   onTap: () async {
//                     List<String> donne = [firstname, lastname, phone];
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => QrcodeScreen(data: donne ),));
//                   },
//                   // Navigator.push(context, MaterialPageRoute(builder: (context) => QrcodeScreen(data: response),));
//
//                   submitForm();
//
//                   text: "Envoyer",
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//
//     // Vous pouvez utiliser les valeurs _name et _email ici
//     print('Nom: $firstname');
//     print('Prenom': $lastname');
//
//   }
//
// }


import 'package:flutter/material.dart';

import '../qrcode_screen/qrcode_screen.dart';

class ReserveScreen extends StatefulWidget {
  @override
  _ReserveScreen createState() => _ReserveScreen();
}

class _ReserveScreen extends State<ReserveScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telephone'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre numero de telephone';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    List<String> donne = [_name, _email, _phone];
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QrcodeScreen(data: donne),));
                    _submitForm();
                  }
                },
                child: Text('Envoyer'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    // Vous pouvez utiliser les valeurs _name et _email ici
    print('Nom: $_name');
    print('Email: $_email');
    print('Telephone: $_phone');
    // Envoyer les données à votre backend ou effectuer d'autres actions nécessaires
  }
}