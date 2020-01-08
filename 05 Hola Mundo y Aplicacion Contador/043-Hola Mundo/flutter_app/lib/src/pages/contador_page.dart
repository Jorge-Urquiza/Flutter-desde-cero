import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContadorPageState(); // necesita retornar una instancia de mi ContadorPageState
  }

}
class ContadorPageState extends State<ContadorPage>{
  final estiloTexto = new TextStyle(fontSize: 30);
  int cont= 0;

  void _sumar(){
    // PARA QUE SE "REDIBUJE"  todo el widget contenedor
    setState(() {
      cont++;
    });
  }
  restar(){
    this.cont--;
    setState(() {
    });
  }
  restablecer(){
    this.cont=0;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // un Scaffold es una
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul"),
        centerTitle: true,
      ),
      body: Center(
        // la mayoria de los widgets solo pueden tener un hijo (child)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de Clicks:', style: estiloTexto),
              Text('$cont',style: estiloTexto),
            ],
          )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: crearBotonesFlotantes()
    );
  }
Widget crearBotonesFlotantes(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: restar),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.restore), onPressed: restablecer)
      ],
    );
  }
}