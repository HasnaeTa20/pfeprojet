
import 'dart:convert';

import 'package:flutter_application/user.dart';
import 'package:http/http.dart' as http;

class API {
  static const hostapi = "http://localhost/api"; 
  static const hostapicrud = "$hostapi/crud";
  static const addArtiste = "$hostapicrud /insert.php ";
 static const getArtiste = "$hostapicrud /getall.php ";
  static const upArtiste = "$hostapicrud /update.php";
 static const deArtiste = "$hostapicrud /delete.php";
 
//  static updateArtiste (String nom, String prenom) async {
//       final response = await http.post(Uri.parse(API.upArtiste),
//       body: 
//       { "nom":nom,
//      "prenom":prenom,
//       }
//       );
//      if(response.statusCode==200){
//       return jsonDecode(response.body); 
//      }else{
//       return null;
//      }
    
//   }
  


}
 String upArtiste = "http://localhost/api/crud/update.php ";
 String  deArtiste = "http://localhost/api/crud/delete.php";


//  String addArtiste = "http://localhost/api/crud/insert.php ";
//  String  getArtiste = "http://localhost/api/crud/getall.php";