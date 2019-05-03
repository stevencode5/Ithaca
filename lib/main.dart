import 'package:flutter/material.dart';
import 'package:ithaca/gastos.dart';
import 'package:ithaca/gastos/gastos-carro.dart';
import 'package:ithaca/gastos/gastos-carro/gasolina.dart';
import 'package:ithaca/gastos/gastos-carro/peaje.dart';
import 'package:ithaca/gastos/gastos-comida.dart';
import 'package:ithaca/gastos/gastos-hospedaje.dart';
import 'package:ithaca/gastos/gastos-otros.dart';
import 'package:ithaca/home-inicio.dart';
import 'package:ithaca/ingresos.dart';
import 'package:ithaca/ingresos/ingresos-cafe.dart';
import 'package:ithaca/ingresos/ingresos-fotografia.dart';
import 'package:ithaca/otro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ithaca',
        home: HomeInicio(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => HomeInicio(),
          '/gastos': (BuildContext context) => Gastos(),
          '/ingresos': (BuildContext context) => Ingresos(),
          '/gastos-carro' : (BuildContext context) => GastosCarro(),
          '/gastos-hospedaje' : (BuildContext context) => GastosHospedaje(),
          '/gastos-comida' : (BuildContext context) => GastosComida(),
          '/gastos-otros' : (BuildContext context) => GastosOtros(),
          '/ingresos-cafe' : (BuildContext context) => IngresosCafe(),
          '/ingresos-fotografia' : (BuildContext context) => IngresosFotografia(),
          '/gastos-carro/gasolina' : (BuildContext context) => Gasolina(),
          '/gastos-carro/peaje' : (BuildContext context) => Peaje(),
          '/otro' : (BuildContext context) => Otro()           
        });
  }
  
}
