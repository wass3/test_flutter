import 'package:flutter/material.dart';
import 'package:flutter_seminario1/screens/animated_container.dart';
import 'package:flutter_seminario1/screens/card_page.dart';
import 'package:flutter_seminario1/screens/home_page.dart';
import 'package:flutter_seminario1/screens/avatar_page.dart';
import 'package:flutter_seminario1/screens/alert_page.dart';
import 'package:flutter_seminario1/screens/input_page.dart';
import 'package:flutter_seminario1/screens/listview_page.dart';
import 'package:flutter_seminario1/screens/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
    'animatedContainer': (BuildContext context) => const AnimatedContainerPage(),
    'inputs': (BuildContext context) => const InputPage(),
    'slider': (BuildContext context) => const SliderPage(),
    'list': (BuildContext context) => const ListaPage()


  };
}
