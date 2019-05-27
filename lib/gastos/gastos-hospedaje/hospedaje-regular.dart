import 'package:flutter/material.dart';

class HospedajeRegular extends StatefulWidget {

  final String tipoHospedaje;

  HospedajeRegular(@required this.tipoHospedaje);

  @override
  State<StatefulWidget> createState() {
    return _HospedajeRegularState();
  }

}

class _HospedajeRegularState extends State<HospedajeRegular> {

  String _tipo;
  String _lugar;
  String _precio;
  String _observacion;
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    this._tipo = widget.tipoHospedaje;

    return Scaffold(
        appBar: AppBar(
          title: Text('Hospedaje - $_tipo'),
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
            _crearTextFieldLugar(), 
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

  TextFormField _crearTextFieldLugar() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(hintText: 'Lugar', icon: Icon(Icons.place)),
      onSaved: (value) => this._lugar = value,
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
