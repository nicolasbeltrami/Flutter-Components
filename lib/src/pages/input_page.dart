import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _passwordInput(),
          Divider(),
          _createUser(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          counter: Text('Letras: ${_name.length}'),
          hintText: 'Nombre',
          labelText: 'Nombre',
          helperText: 'Nombre y Apellido',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }


  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
          ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }
  Widget _passwordInput() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)
          ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  _createUser() {
    return ListTile(
      title: Text('Su nombre es: $_name'),
      subtitle: Text('Email: $_email'),
    );
  }
}
