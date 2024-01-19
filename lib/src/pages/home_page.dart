import 'package:flutter/material.dart';

// import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/utils/icono_string_util.dart';
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
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> options = [];
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing:
            const Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: () {
          // final route = MaterialPageRoute(
          //     builder: (context) =>
          //         const AlertPage()); // es una navegacion normal en dart flutter
          // Navigator.push(context, route);

          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      options
        ..add(widgetTemp)
        ..add(const Divider());
    });
    return options;
  }
}
