import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';
  String _date = '';
  String _selectedOption = 'Volar';
  
  List<String> _powers = ['Volar', 'Rayos X', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

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
          _createDate(context),
          Divider(),
          _createDropDown(),
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

  Widget _createDate(BuildContext context) {

    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          hintText: 'Fecha de Nacimiento',
          labelText: 'Fecha de Nacimiento',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)
          ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );

  }

  List<DropdownMenuItem<String>> getOptionsDropDown() {

    List<DropdownMenuItem<String>> list = new List();

    _powers.forEach((power) {

      list.add( DropdownMenuItem(
        child: Text(power),
        value: power,
      ));

    });
    return list;
  }

  Widget _createDropDown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
      Expanded(
        child: DropdownButton(
        value: _selectedOption,
        items: getOptionsDropDown(),
        onChanged: (opt) {
          setState(() {
            _selectedOption = opt;
          });
        },
    ),
      ),
    ],
    );

  }

  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'CL')

    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }

 Widget _createUser() {
    return ListTile(
      title: Text('Su nombre es: $_name'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_selectedOption),
    );
  }
}
