import 'package:flutter/material.dart';
import 'package:siglapaisesapp/view/menu.dart';
import 'package:siglapaisesapp/view/paises_dados.dart';

class PaisesScreen extends StatelessWidget {

  final String pais;

  PaisesScreen({this.pais = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siglas dos Países"),
        actions: <Widget>[
          IconButton(
            icon:  Icon(Icons.refresh),
            onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PaisesScreen(pais: "")));
                },
          )
        ],
      ),
      body: PaisesDados(pais: pais),
      drawer: Menu(),
    );
  }
}

