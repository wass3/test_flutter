
import 'package:flutter/material.dart';
import 'package:flutter_seminario1/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes')
      ), 
      body: _lista());
  }

  Widget _lista() {
    print(menuProvider.opciones);

    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      const ListTile(title: Text('Hola Mundo')),
      const Divider(),
      const ListTile(title: Text('Hola Mundo')),
      const Divider()
    ];
  }
}
