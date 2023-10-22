import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          Container(
            padding: const EdgeInsets.all(6.5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
              radius: 25,
            ),
          ),

          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('AA'),
            ),
          )
        ],

      ),
      body: const Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEuPD6ZF3_VbzDeQyCb_KfESCI6kGZbk1mZg&usqp=CAU'),
          fadeInDuration: Duration(milliseconds: 2),
        ),
      ),
    );
  }
}
