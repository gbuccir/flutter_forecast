import 'package:flutter/material.dart';

class NovoRole extends StatefulWidget {
  NovoRole({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NovoRoleState createState() => _NovoRoleState();
}

class _NovoRoleState extends State<NovoRole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar novo rolê'),
      ),
      body: Center(
          //////colocar o formulario com nome, data e local do rolê
          ///colocar botao de voltar
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          criarNovo(context);
        },
        tooltip: 'salvar role',
        child: Icon(Icons.save),
      ),
    );
  }
}

void criarNovo(BuildContext context) {
  String role = "novo role";
  Navigator.pop(context, role);
}

// class NovoRole extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Criar novo rolê"),
//         /////data do rolê tem que estar no range (hj + 9)
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Voltar para a lista'),
//         ),
//       ),
//     );
//   }
// }
