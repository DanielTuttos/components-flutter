import 'package:flutter/material.dart';

import 'package:components/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes APP',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Componentes'),
        ),
        body: const HomePageTemp(),
      ),
    );
  }
}
