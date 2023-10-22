import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, 
              backgroundColor: Colors.blue,
              shape: const StadiumBorder()),
          onPressed: () {_mostrarAlerta(context);},
          child: const Text('Mostrar Alerta'),
        ),
      ),

    );
  }
  
  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        //Nos permite cerrar la alerta haciendo click fuera
        barrierDismissible: true,
        builder: (context) {
          return const AlertDialog(
            title: Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text('Este es el contenido de la caja de la alerta')],
            ),
          );
        });
  }
}
