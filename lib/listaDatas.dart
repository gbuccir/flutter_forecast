import 'package:flutter/material.dart';

class ListaDatas extends StatefulWidget {
  ListaDatas({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ListaDatasState createState() => _ListaDatasState();
}

class _ListaDatasState extends State<ListaDatas> {
  var _listRoles = [];

  get titulo => this.titulo;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('Sua lista de rolês'),
      ),
      body: this._listRoles.isNotEmpty
          ? Center(

              ///COLOCAR LISTBUILDER

              )
          : Center(
              child: Text(
                this._listRoles.length.toString() + ' rolês criados no momento',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/novo');
        },
        tooltip: 'Criar data',
        child: Icon(Icons.add),
      ),
    );
  }
}
