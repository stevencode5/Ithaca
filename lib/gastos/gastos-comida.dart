import 'package:flutter/material.dart';

class GastosComida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos Comida'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Gastos Comida')
            ],
          )
        )        
      )
    );
  }
  
}
