import 'package:flutter/material.dart';
import 'package:ithaca/gasto-regular.dart';

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
              _crearBotonRestaurante(context),
              _crearBotonMercado(context),
              _crearBotonCerveza(context),
              _crearBotonAgua(context),
              _crearBotonGustos(context),
              _crearBotonOtro(context)
            ],
          )
        )        
      )
    );
  }

  RaisedButton _crearBotonRestaurante(BuildContext context){
    return RaisedButton(
        padding: EdgeInsets.all(30),
        textColor: Colors.white,
        color: Colors.blue,
        child: Column(
          children: <Widget>[            
            Icon(Icons.fastfood),
            Text('Restaurante'),
          ],
        ),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-comida/restaurante');
        },
      );
  }

  RaisedButton _crearBotonMercado(BuildContext context){
    return _crearBotonGastoRegularHospedaje('Mercado', Icons.shop, context);
  }

  RaisedButton _crearBotonCerveza(BuildContext context){
    return RaisedButton(
        padding: EdgeInsets.all(30),
        textColor: Colors.white,
        color: Colors.blue,
        child: Column(
          children: <Widget>[            
            Icon(Icons.local_drink),
            Text('Cerveza'),
          ],
        ),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-comida/cerveza');
        },
      );
  }

  RaisedButton _crearBotonAgua(BuildContext context){
    return _crearBotonGastoRegularHospedaje('Agua', Icons.local_drink, context);
  }

  RaisedButton _crearBotonGustos(BuildContext context){
    return _crearBotonGastoRegularHospedaje('Gustos', Icons.gesture, context);
  }

  RaisedButton _crearBotonOtro(BuildContext context){
    return _crearBotonGastoRegularHospedaje('Otro', Icons.add, context);
  }
  
  RaisedButton _crearBotonGastoRegularHospedaje(String tipo, IconData icono, BuildContext context){
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => GastoRegular('Comida', tipo)));
        },
      );
  }

}
