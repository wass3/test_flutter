
import 'package:flutter/material.dart';
import 'package:flutter_seminario1/providers/menu_providers.dart';
import 'package:flutter_seminario1/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ), 
      body: _lista());
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        //Crearemos el ListView
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );


  }

  List<Widget> _listaItems(List? data, BuildContext context) {
    final List<Widget> opciones = [];
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });

    return opciones;
  }
}
