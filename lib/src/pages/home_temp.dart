import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  final options = const ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
        // children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return options.map((String item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: const Text('Hola que tal'),
            leading: const Icon(Icons.balance),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              print(item);
            },
          ),
          const Divider(),
        ],
      );
    }).toList();
  }
}
