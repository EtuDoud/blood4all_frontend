import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../resultScreen/result.dart';

class ApiService {
  static Future<bool> sendData(BuildContext context, int? unite,
      String bloodgroup, String productType) async {
    try {
      print(unite);
      print(bloodgroup);
      print(productType);
      final response = await http.post(
        Uri.parse(
            'https://blood4all-backend.vercel.app/api/doctor/clj6xupzd0000mk08cbi8hnou'),
        // Remplacez par votre URL d'API
        body: {
          'nombrePoches': unite,
          'groupeSanguin': bloodgroup,
          'productType': productType
        },
        headers: {'Content-Type': 'application/json'},
      );
      print(response);
      if (response.statusCode == 200) {
        bool apiResponse = response.body.toLowerCase() == 'true';
        if (apiResponse) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ResultScreen()),
          );
        } else {
          // Handle other API response cases
        }
        return apiResponse;
      } else {
        return false; // Échec
      }
    } catch (e) {
      return false; // Erreur
    }
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final TextEditingController _uniteController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  int? _selectedVolume;

  final List<int> _volumes = [300, 200, 250, 350];
  //implementer la selection d'un groupe sanguin
  List<String> bloodGroups = ['A+', 'A-', 'B+', 'B-', '0+', 'O-', 'AB+', 'AB-'];
  String? selectedBloodGroup;

  Future<void> _submitForm() async {
    int unite = int.tryParse(_uniteController.text) ?? 0;
    String type = _typeController.text;
    int? volume = _selectedVolume;
    String selectedBloodGroup = "O+";

    bool success =
        await ApiService.sendData(context, unite, selectedBloodGroup, type);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(success ? 'Succès' : 'Erreur'),
          content: Text(success
              ? 'Les données ont été envoyées avec succès.'
              : 'Une erreur s\'est produite lors de l\'envoi des données.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 60),
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: const Color(0xff153565),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Center(
                    child: Text(
                  "Formulaire de recherche",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                )),
                Padding(
                    padding: EdgeInsets.only(top: 60, bottom: 15),
                    child: Text(
                      "Recherchez avec BLOOD4ALL",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                Text(
                  "Veuillez fournir les informations \n demandees ci-dessous",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("volume (ml)"),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField<int>(
                    value: _selectedVolume ?? _volumes[0],
                    items: _volumes.map((int volume) {
                      return DropdownMenuItem<int>(
                        value: volume,
                        child: Text(volume.toString()),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        _selectedVolume = newValue;
                      });
                    },
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("Nombre d'unite"),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _uniteController,
                    keyboardType: TextInputType.text,
                  ),
                ]),
                // SizedBox(
                //   height: 15,
                // ),
                // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                //   Text("Poids"),
                //   SizedBox(
                //     height: 10,
                //   ),
                //   TextField(
                //     controller: _poidsController,
                //     keyboardType: TextInputType.number,
                //   ),
                // ]),
                const SizedBox(
                  height: 10,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("Type de produit"),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _typeController,
                    keyboardType: TextInputType.text,
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("Groupe sanguin"),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: bloodGroups.length,
                        itemBuilder: (BuildContext context, int index) {
                          String bloodGroup = bloodGroups[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedBloodGroup = bloodGroup;
                              });
                            },
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: selectedBloodGroup == bloodGroup
                                      ? const Color(0xffDD989E)
                                      : const Color(0xffE9EEF6),
                                ),
                                child: Center(
                                  child: Text(
                                    bloodGroup,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ]),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40, top: 20),
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    child: const Text('Envoyer'),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

//Dans cet exemple, la classe ApiService encapsule la logique d'envoi des données à votre point d'extrémité API. La méthode statique sendData effectue la requête HTTP POST et renvoie un booléen indiquant si l'opération a réussi ou non.

//La classe MyFormPage contient maintenant uniquement la logique d'interface utilisateur. Lorsque le bouton "Envoyer" est cliqué, il appelle la méthode sendData de ApiService pour envoyer les données et affiche un dialogue contextuel en fonction du résultat.
