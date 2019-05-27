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
              _crearBotonGasolina(context),
              _crearBotonPeaje(context),
              _crearBotonParqueadero(context),
              _crearBotonMecanica(context),
              _crearBotonLavada(context),
              _crearBotonOtro(context)
            ],
          )
        )        
      )
    );
  }

  RaisedButton _crearBotonGasolina(BuildContext context){
    return RaisedButton(
        padding: EdgeInsets.all(30),
        textColor: Colors.white,
        color: Colors.blue,
        child: Column(
          children: <Widget>[            
            Icon(Icons.local_gas_station),
            Text('Gasolina'),
          ],
        ),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-carro/gasolina');
        },
      );
  }

  RaisedButton _crearBotonPeaje(BuildContext context){
    return _crearBotonGastoCarro('Peaje', Icons.toll, context);
  }

  RaisedButton _crearBotonParqueadero(BuildContext context){
    return _crearBotonGastoCarro('Parqueadero', Icons.local_parking, context);
  }

  RaisedButton _crearBotonMecanica(BuildContext context){
    return _crearBotonGastoCarro('Mecanica', Icons.toll, context);
  }

  RaisedButton _crearBotonLavada(BuildContext context){
    return _crearBotonGastoCarro('Lavada', Icons.watch_later, context);
  }

  RaisedButton _crearBotonOtro(BuildContext context){
    return _crearBotonGastoCarro('Otro', Icons.add, context);
  }
  
  RaisedButton _crearBotonGastoCarro(String tipo, IconData icono, BuildContext context){
    return RaisedButton(
        padding: EdgeInsets.all(30),
        textColor: Colors.white,
        color: Colors.blue,
        child: Column(
          children: <Widget>[            
            Icon(icono),
            Text(tipo),
          ],
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => GastoRegular('Carro', tipo)));
        },
      );
  }

}
