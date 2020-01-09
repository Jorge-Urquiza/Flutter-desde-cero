
import 'package:component_plus/src/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:component_plus/utils/icono_strng.dart';
import 'package:component_plus/src/providers/menu_provider.dart';

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
              children: cargarListaItems(snapshot.data,context),
            );
       }, // la propiedad builder recibe una funcion que recibe una Build context y un asyncSnapShot que es tipo
       // que viene en mi  Future es decir un Dynamic(la salida del cargar data)
    );
  }
  List<Widget> cargarListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options=[];
    data.forEach((opt) {
       final widgetTemporal=  ListTile(
         title: Text(opt['texto']),
         leading: getIcono(opt['icon']),
         trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
         onTap: (){
              // para navegar a otra pantalla
           final rutaNueva= MaterialPageRoute(
               builder:(context)=> AlertaPage()
           );
           Navigator.pushNamed(context, opt['ruta']);
         },
       );
       options..add(widgetTemporal)
       ..add(Divider());
    });
    return options;
  }

}