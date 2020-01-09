import 'package:flutter/material.dart';

class AlertaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Vista Alert"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Show Alert"),
          textColor: Colors.white,
          color: Colors.blue,
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.white
            )
          ),
          onPressed: () =>  _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
           Navigator.pop(context);
        },
      ),
    );
  }
  void _mostrarAlerta(BuildContext contexto){
        showDialog(
         context: contexto,
        barrierDismissible: true, // obligatorio para las alertas.
        builder: (contexto) {
           return AlertDialog(
             shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              title: Text("Titulo Basico"),
              content: Column(
                //para evitar que la columna se estire lo maximo posible en la pantalla
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Este es un contenido de una alerta Basica"),
                  // para crear un propio logo
                  FlutterLogo(
                     size: 50,
                  ),
                ],
              ),
             actions: <Widget>[
               FlatButton(
                 child: Text("Cancel"),
                 onPressed: () => Navigator.of(contexto).pop(),
               ),
               FlatButton(
                 child: Text("OK"),
                 onPressed: () {
                   // para poder cerrar la alerta
                   Navigator.of(contexto).pop();
                 },
               )
             ],
           );
        }
     );
  }

}