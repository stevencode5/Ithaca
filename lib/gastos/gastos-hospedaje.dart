import 'package:flutter/material.dart';

class GastosHospedaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos Hospedaje'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Gastos Hospedaje')
            ],
          )
        )        
      )
    );
  }
  
}
