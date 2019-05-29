import 'package:flutter/material.dart';

class Restaurante extends StatefulWidget {
  @override
  _RestauranteState createState() => _RestauranteState();
}

class _RestauranteState extends State<Restaurante> {

  String _precio;
  String _observacion;
  String _tipoSeleccionado = 'Almuerzo';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Restaurante'),
        ),
        body: _creaFormulario());
  }

  Container _creaFormulario() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[ 
            _crearLogo(),
            _crearListaTipoComida(),
            _crearTextFieldPrecio(),   
            _crearTextFieldObservacion(),         
            _crearSeparador(),
            _crearBotonGuardar()
          ],
        ),
      ),
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

  DropdownButton _crearListaTipoComida() {
    return DropdownButton<String>(
      value: _tipoSeleccionado,
      onChanged: (String valor) {
        setState(() {
          _tipoSeleccionado = valor;
        });
      },
      items: <String>['Desayuno', 'Almuerzo', 'Cena'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  TextFormField _crearTextFieldPrecio() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(hintText: 'Precio', icon: Icon(Icons.attach_money)),
      validator: (value) =>
          value.isEmpty ? 'El precio no puede estar vacio' : null,
      onSaved: (value) => this._precio = value,
    );
  }

  TextFormField _crearTextFieldObservacion() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(hintText: 'Observacion', icon: Icon(Icons.message)),
      onSaved: (value) => this._observacion = value,
    );
  }

  Container _crearBotonGuardar() {
    return Container(
        padding: EdgeInsets.only(top: 35),
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: Colors.blue,
          child: Text('Guardar',
              style: TextStyle(fontSize: 20.0, color: Colors.white)),
          onPressed: _validarIngresar,
        ));
  }

  Container _crearSeparador(){
    return Container(
      padding: EdgeInsets.all(25),
      child: Divider(
        color: Colors.black,
        height: 20
      ),
    );
  }

  void _validarIngresar() {
    
  }

}
