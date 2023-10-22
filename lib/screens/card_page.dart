import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          _cardTipo2(),
          _cardTipo1(),
          _cardTipo1(),
          _cardTipo2(),
          _cardTipo1(),
          _cardTipo2(),
          ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      margin: const EdgeInsets.all(30.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text(
                'Esta es una prueba para ver lo que ocurre con una tarjeta que tiene un subtitle bastante largo y que no sabemos como responderá'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: const Text('Cancelar'), onPressed: () {}),
              TextButton(child: const Text('Ok'), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEuPD6ZF3_VbzDeQyCb_KfESCI6kGZbk1mZg&usqp=CAU',
            ),
            placeholder: AssetImage('../../assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 10),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Esta es la prueba de que funciona la imagen'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  //Color negro con índice de opacidad 26%
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(2, 10))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: card,
        ));
  }
}