import 'package:flutter/material.dart';
import 'package:components_fullter/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
         title: Text("Title Blank"),
            centerTitle: true,
      ),
      body: lista(),
    );
  }
  Widget lista() {

    return FutureBuilder(
       future: menuProvider.cargarData(), // regresa un future el cargar data
      initialData: [],
       builder: (BuildContext context , AsyncSnapshot<List<dynamic>> snapshot) {
            return  ListView(
              children: cargarListaItems(snapshot.data),
            );
       }, // la propiedad builder recibe una funcion que recibe una Build context y un asyncSnapShot que es tipo
       // que viene en mi  Future es decir un Dynamic(la salida del cargar data)
    );
  }
  List<Widget> cargarListaItems(List<dynamic> data) {
    final List<Widget> options=[];
    data.forEach((opt) {
       final widgetTemporal=  ListTile(
         title: Text(opt['texto']), 
         leading: Icon(Icons.account_circle, color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
         onTap: (){

         },
       );
       options..add(widgetTemporal)
       ..add(Divider());
    });
    return options;
  }

}