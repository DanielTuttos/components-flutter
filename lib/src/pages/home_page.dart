import 'package:flutter/material.dart';

import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // print(menuProvider.options);
    // menuProvider.loadData();
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data) {
    final List<Widget> options = [];
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: const Icon(
          Icons.abc_sharp,
          color: Colors.blueAccent,
        ),
        trailing:
            const Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: () {},
      );
      options
        ..add(widgetTemp)
        ..add(const Divider());
    });
    return options;
  }
}
