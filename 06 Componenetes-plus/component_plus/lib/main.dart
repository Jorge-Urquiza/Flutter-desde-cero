import 'package:component_plus/src/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:component_plus/src/pages/alert_page.dart';
import 'package:fluttertoast/fluttertoast.Dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Componentes",
        //home:  HomePage()
      initialRoute: '/',
      routes:getRoutes(),
      onGenerateRoute:  (RouteSettings settings){
        // como lanzar un toast
          Fluttertoast.showToast(
            msg: "This is Toast messaget",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1
        );

        //como devolver uan ruta cuando no existe
        return MaterialPageRoute(
          builder: (BuildContext context)=> AlertaPage()
        );
      },
    );
  }

}