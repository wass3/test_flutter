import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    _cargarData();
  }
  _cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      // ignore: avoid_print
      print(data);
    });
  }
}

final menuProvider = _MenuProvider();
