import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final option=['uno', 'dos', 'tres', 'cuatro', 'cinco' ]; // list string
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Componente"),
        centerTitle: true,
      ),
      body: ListView(
        children: crearItems()
      ),
    );
  }

  List<Widget> crearItems(){
    List<Widget> lista= new List<Widget>();
       for(var opc in option){ //foreach
          final temporalWidget= ListTile(
            title: Text(opc),
            subtitle: Text("quiero ver"),
            leading: Icon(Icons.refresh),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              
            },
          );
          lista.add(temporalWidget);
          lista.add(Divider());
       }
    return lista;
  }
  // quedamos en el video 63 nos toca el 64.

}