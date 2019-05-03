import 'package:flutter/material.dart';
import 'package:ithaca/gasto-regular.dart';

class GastosCarro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos Carro'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[              
              _crearBotonGastoGasolina(context),
              _crearBotonGastoPeaje(context),
              _crearBotonGastoOtro(context)
            ],
          )
        )        
      )
    );
  }

  RaisedButton _crearBotonGastoGasolina(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Gasolina'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-carro/gasolina');
        },
      );
  }

  RaisedButton _crearBotonGastoPeaje(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Peaje'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-carro/peaje');
        },
      );
  }

  RaisedButton _crearBotonGastoOtro(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Otro'),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => GastoRegular('Carro gas')));
        },
      );
  }
  
}