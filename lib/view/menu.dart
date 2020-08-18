import 'package:flutter/material.dart';
import 'package:siglapaisesapp/view/ajuda.dart';
import 'package:siglapaisesapp/view/paises_screen.dart';

import 'mensagem.dart';

class Menu extends StatelessWidget with Mensagem {

  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
          child: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  height:100.0,
                  child: Text("Menu", style: TextStyle(fontSize: 20.0,
                      color: Colors.white, fontWeight: FontWeight.w400),),
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Pesquisar"),
                  onTap: () => {                      Navigator.pop(context),
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => SimpleDialog(
                          title: Text("Digite o nome do país"),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: search,
                                onTap: () => search.clear(),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      showMensagem("Operação cancelada.", context);
                                    },
                                    child: Text("Cancelar")),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PaisesScreen(pais: search.text)));
                                      showMensagem("Pesquisa realizada para o país ${search.text}.", context);

                                    },
                                    child: Text("OK", style: TextStyle(color: Colors.blue),)),
                              ],
                            )

                          ],
                        )
                    )  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("Ajuda"),
                  onTap:  () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Ajuda()));

                  },
                )
              ],
            ),
          ),
        )
    );
  }
}
