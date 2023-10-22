import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomePageTemp extends StatelessWidget {
  HomePageTemp({super.key});

  final opciones = ['Título 1', 'Título 2', 'Título 3', 'Test'];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> listaW = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      listaW.add(tempWidget);
      listaW.add(const Divider());
    }
    return listaW;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text('$item!'),
            subtitle: const Text('Probando atributos'),
            leading: const Icon(Icons.accessible_sharp),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
