import 'package:flutter/material.dart';
import 'package:flutter_seminario1/screens/alert_page.dart';
import 'package:flutter_seminario1/screens/avatar_page.dart';
import 'package:flutter_seminario1/screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          'alert': (BuildContext context) => AlertPage(),
          'avatar': (BuildContext context) => AvatarPage(),
// Este es otro método de llamar a las rutas, indicándola en cada clase
          //AlertPage.pageName: (BuildContext context) => AlertPage(),
        });

 }
}