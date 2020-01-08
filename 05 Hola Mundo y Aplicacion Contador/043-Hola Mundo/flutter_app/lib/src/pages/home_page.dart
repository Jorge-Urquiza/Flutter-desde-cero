import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estiloTexto = new TextStyle(fontSize: 30);
  int cont= 3;
  clickeado(){
    this.cont++;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // un Scaffold es una
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
      ),
      body: Center(
        // la mayoria de los widgets solo pueden tener un hijo (child)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks:', style: estiloTexto),
            Text('asd',style: estiloTexto),
          ],
        )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
            clickeado();
        },
      ),
    );
  }
}