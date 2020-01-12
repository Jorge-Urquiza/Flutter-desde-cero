import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final iconos = <String,IconData>{
  'add_alert' : Icons.add_alert ,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
  'donut_large' : Icons.donut_large,
  'input'      : Icons.input
};

Icon getIcono(String name){
  return Icon(iconos[name], color: Colors.blue,);
}