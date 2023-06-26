import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static Future<bool> sendData(int? unite, String bloodgroup, String productType) async {
    try {
      final response = await http.post(
        Uri.parse('https://example.com/api/endpoint'),
        // Remplacez par votre URL d'API
        body: jsonEncode({ 'nombrePoches': unite.toString(), 'groupeSanguin': bloodgroup, 'productType': productType }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return true; // Succès
      } else {
        return false; // Échec
      }
    } catch (e) {
      return false; // Erreur
    }
  }
}

// import 'package:http/http.dart' as http;
//
// class ApiService {
//   static Future<void> sendData(int? unite, String bloodgroup, String productType) async {
//     try {
//       final response = await http.post(
//         Uri.parse('https://blood4all-backend.vercel.app/api/doctor/clj6xupzd0000mk08cbi8hnou'), // Remplacez par l'URL de votre endpoint API
//         body: {
//           'unite': unite.toString(),
//           'groupeSanguin': bloodgroup,
//           'productType': productType,
//         },
//         headers: {'Content-Type': 'application/json'},
//       );
//
//       if (response.statusCode == 200) {
//         // Succès
//         print('Données envoyées avec succès à l\'API.');
//       } else {
//         // Échec
//         print('Une erreur s\'est produite lors de l\'envoi des données à l\'API.');
//       }
//     } catch (e) {
//       // Erreur
//       print('Une erreur s\'est produite lors de la communication avec l\'API : $e');
//     }
//   }
// }