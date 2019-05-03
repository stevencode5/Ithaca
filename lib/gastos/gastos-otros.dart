import 'package:flutter/material.dart';

class GastosOtros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos Otros'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Gastos Otros')
            ],
          )
        )        
      )
    );
  }
  
}
