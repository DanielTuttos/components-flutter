import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          const SizedBox(
            height: 30.0,
          ),
          _cardType2()
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('titulo de la tarjeta'),
            subtitle: Text(
                'description de la tarjeta que estoy practicando para este ejemplo me pidieron poner un texto largo para ver como se comporta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.coliseugeek.com.br/wp-content/uploads/2023/01/7e52f-clickwallpapers-marvel-avengers-img_1-scaled-1.jpg'),
            fadeInDuration: Duration(milliseconds: 100),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // const Image(
          //     image: NetworkImage(
          //         'https://www.coliseugeek.com.br/wp-content/uploads/2023/01/7e52f-clickwallpapers-marvel-avengers-img_1-scaled-1.jpg')),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('no tengo idea de que poner')),
        ],
      ),
    );
  }
}
