import 'package:flutter/material.dart';
import 'package:ithaca/gasto-regular.dart';

class GastosServicios extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos Servicios'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[              
              _crearBotonDuchas(context),
              _crearBotonBano(context),
              _crearBotonLavanderia(context),
              _crearBotonInternet(context),
              _crearBotonOtro(context)
            ],
          )
        )        
      )
    );
  }

  RaisedButton _crearBotonDuchas(BuildContext context){
    return _crearBotonGastoRegularServicios('Duchas', Icons.watch, context);
  }

  RaisedButton _crearBotonBano(BuildContext context){
    return _crearBotonGastoRegularServicios('Baño', Icons.restore_from_trash, context);
  }

  RaisedButton _crearBotonLavanderia(BuildContext context){
    return _crearBotonGastoRegularServicios('Lavanderia', Icons.local_laundry_service, context);
  }

  RaisedButton _crearBotonInternet(BuildContext context){
    return _crearBotonGastoRegularServicios('Internet', Icons.web, context);
  }

  RaisedButton _crearBotonOtro(BuildContext context){
    return _crearBotonGastoRegularServicios('Otro', Icons.add, context);
  }
  
  RaisedButton _crearBotonGastoRegularServicios(String tipo, IconData icono, BuildContext context){
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => GastoRegular('Servicos', tipo)));
        },
      );
  }

}
