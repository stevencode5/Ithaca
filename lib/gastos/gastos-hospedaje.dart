import 'package:flutter/material.dart';
import 'package:ithaca/gastos/gastos-hospedaje/hospedaje-regular.dart';

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
              _crearBotonHotel(context),
              _crearBotonHostel(context),
              _crearBotonSalvaje(context),
              _crearBotonCamping(context),
              _crearBotonAmigos(context),
              _crearBotonParqueadero(context),
              _crearBotonBEP(context),
            ],
          )
        )        
      )
    );
  }

  RaisedButton _crearBotonHotel(BuildContext context){
    return _crearBotonGastoHospedaje('Hotel', Icons.hotel, context);
  }

  RaisedButton _crearBotonHostel(BuildContext context){
    return _crearBotonGastoHospedaje('Hostel', Icons.bookmark_border, context);
  }

  RaisedButton _crearBotonSalvaje(BuildContext context){
    return _crearBotonGastoHospedaje('Salvaje', Icons.panorama_wide_angle, context);
  }

  RaisedButton _crearBotonCamping(BuildContext context){
    return _crearBotonGastoHospedaje('Camping', Icons.transit_enterexit, context);
  }

  RaisedButton _crearBotonAmigos(BuildContext context){
    return _crearBotonGastoHospedaje('Amigos', Icons.people, context);
  }

  RaisedButton _crearBotonParqueadero(BuildContext context){
    return _crearBotonGastoHospedaje('Parqueadero', Icons.local_parking, context);
  }

  RaisedButton _crearBotonBEP(BuildContext context){
    return _crearBotonGastoHospedaje('BEP', Icons.control_point_duplicate, context);
  }

  RaisedButton _crearBotonGastoHospedaje(String tipo, IconData icono, BuildContext context){
    return RaisedButton(
        padding: EdgeInsets.all(15),
        textColor: Colors.white,
        color: Colors.blue,
        child: Column(
          children: <Widget>[            
            Icon(icono),
            Text(tipo),
          ],
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HospedajeRegular(tipo)));
        },
      );
  }
  
}
