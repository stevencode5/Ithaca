import 'package:flutter/material.dart';

class Ingresos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresos'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              _crearLogo(), 
              _crearBotonCafe(context),
              _crearBotonFotografia(context)
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

  RaisedButton _crearBotonCafe(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Cafe'),
        onPressed: (){
          Navigator.of(context).pushNamed('/ingresos-cafe');
        },
      );
  }

  RaisedButton _crearBotonFotografia(BuildContext context){
    return RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('fotografia'),
        onPressed: (){
          Navigator.of(context).pushNamed('/ingresos-fotografia');
        },
      );
  }

}
