import 'package:flutter/material.dart';
import 'package:ithaca/gasto-regular.dart';

class Gastos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              _crearLogo(),    
              _crearBotonGastosCarro(context),
              _crearBotonGastosHospedaje(context),
              _crearBotonGastosComida(context),
              _crearBotonGastosAtracciones(context),
              _crearBotonGastosServicios(context),
              _crearBotonGastosOtros(context)
            ],
          )
        )        
      )
    );
  }

  Hero _crearLogo() {
    return Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 40.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/imgs/LogoFlutter.png'),
        ),
      ),
    );
  }

  RaisedButton _crearBotonGastosCarro(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Carro'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-carro');
        },
      );
  }

  RaisedButton _crearBotonGastosHospedaje(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Hospedaje'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-hospedaje');
        },
      );
  }

  RaisedButton _crearBotonGastosComida(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Comida'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-comida');
        },
      );
  }

  RaisedButton _crearBotonGastosAtracciones(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Atracciones'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-atracciones/atracciones');
        },
      );
  }

  RaisedButton _crearBotonGastosServicios(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Servicios'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos-servicios');
        },
      );
  }

  RaisedButton _crearBotonGastosOtros(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Otros'),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => GastoRegular('Otros', 'otro')));
        },
      );
  }
  
}
