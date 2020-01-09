import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle; // para leer el JSON

class _MenuProvider{
    List<dynamic> opciones=[];
  _MenuProvider(){
  }
  Future<List<dynamic>> cargarData() async{
     final response = await rootBundle.loadString('data/menu-opt.json');
          Map dataMap= json.decode(response);
          opciones=dataMap['rutas'];
          return opciones;
  }
}

final menuProvider = new _MenuProvider();
