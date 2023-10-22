import 'package:flutter/material.dart';
import 'package:flutter_seminario1/routes/routes.dart';
import 'package:flutter_seminario1/screens/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale('en', ''), // English, no country code
        Locale('es', 'ES'), // Spanish, SPAIN
      ],

      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        //ignore: avoid_print
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => const AlertPage());
      },
    );
 }
}