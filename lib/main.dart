import 'package:flutter/material.dart';
import 'package:flutter_application/ajouterartiste.dart';
import 'package:flutter_application/home.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'ircamCorpu',
      debugShowCheckedModeBanner: false,
      home:
       CreationArt(),
    
       ); 
    
}
}

