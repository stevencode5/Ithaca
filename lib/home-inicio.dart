import 'package:flutter/material.dart';

class HomeInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ithaca'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              _crearLogo(),
              _crearBotonGastos(context),
              _crearBotonIngresos(context)
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

  RaisedButton _crearBotonGastos(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Gastos'),
        onPressed: (){
          Navigator.of(context).pushNamed('/gastos');
        },
      );
  }

  RaisedButton _crearBotonIngresos(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Ingresos'),
        onPressed: (){
          Navigator.of(context).pushNamed('/ingresos');
        },
      );
  }

}
