import 'package:flutter/material.dart';

class NovoRole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar novo rolê"),
        /////data do rolê tem que estar no range (hj + 9)
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar para a lista'),
        ),
      ),
    );
  }
}
