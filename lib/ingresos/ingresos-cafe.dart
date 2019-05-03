import 'package:flutter/material.dart';

class IngresosCafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresos Cafe'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Ingresos Cafe')
            ],
          )
        )        
      )
    );
  }
  
}
