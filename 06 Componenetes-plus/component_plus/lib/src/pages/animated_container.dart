

import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimatedContainerPageState();
  }
}
class AnimatedContainerPageState extends State{
  double _alto=60;
  double _ancho=60;
  Color _color = Colors.red;
  BorderRadiusGeometry _border= BorderRadius.circular(8);

  void cambiarColor() {
    final randomico=Random();

    setState(() {
       _alto=randomico.nextInt(300).toDouble(); // para que el alto y ancho no pase de los 300
       _ancho=randomico.nextInt(300).toDouble(); // para que el alto y ancho no pase de los 300
       _color = Color.fromARGB(
          randomico.nextInt(255),  // los colores RGB llegan maximo hasta 255
          randomico.nextInt(255),
          randomico.nextInt(255),
          1);  // opacidad siempre en 1;
      });
    _border=BorderRadius.circular(randomico.nextInt(100).toDouble());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
        centerTitle: true,
      ),
      body: Center(
        child:
        AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(
            milliseconds: 800
          ),
          width: _ancho,
          height: _alto,
          decoration: BoxDecoration(
             color: _color,
             borderRadius: _border,
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          cambiarColor();
        },
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.green,
      ),
    );
  }



}