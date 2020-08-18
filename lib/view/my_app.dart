import 'package:flutter/material.dart';
import 'package:siglapaisesapp/view/paises_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siglas dos Países',

      home: PaisesScreen(),
    );
  }
}