import 'package:component_plus/src/pages/alert_page.dart';
import 'package:component_plus/src/pages/animated_container.dart';
import 'package:component_plus/src/pages/avatar_page.dart';
import 'package:component_plus/src/pages/card_page.dart';
import 'package:component_plus/src/pages/input_page.dart';
import 'package:flutter/material.dart';
import '../home.dart';
Map<String,WidgetBuilder> getRoutes(){
  return <String,WidgetBuilder>{
    '/': ( BuildContext context)=> HomePage(),
    'alert': ( BuildContext context)=> AlertaPage(),
    'avatar': ( BuildContext context)=> AvatarPage(),
    'card':  ( BuildContext context)=> CardPage(),
    'animatedContainer':  ( BuildContext context)=> AnimatedContainerPage(),
    'inputs':  ( BuildContext context)=> InputPage()
  };
}
