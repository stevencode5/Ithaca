import 'package:flutter/material.dart';

class Gasolina extends StatefulWidget {
  @override
  _GasolinaState createState() => _GasolinaState();
}

class _GasolinaState extends State<Gasolina> {

  String _galones;
  String _precio;
  String _kilometros;
  String _observacion;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gasolina'),
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
            _crearTextFieldGalones(),
            _crearTextFieldPrecio(),   
            _crearTextFieldKilometros(),
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

  TextFormField _crearTextFieldGalones() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(hintText: 'Galones', icon: Icon(Icons.local_gas_station)),
      validator: (value) =>
          value.isEmpty ? 'Los galones no pueden estar vacios' : null,
      onSaved: (value) => this._galones = value,
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

  TextFormField _crearTextFieldKilometros() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(hintText: 'Kilometros', icon: Icon(Icons.confirmation_number)),
      validator: (value) =>
          value.isEmpty ? 'Los kilometros no pueden estar vacios' : null,
      onSaved: (value) => this._kilometros = value,
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
