import 'package:flutter/material.dart';
import 'package:components_fullter/src/home.dart';
import 'package:components_fullter/src/home_temp.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Componentes",
      home:  HomePage()
    );
  }

}