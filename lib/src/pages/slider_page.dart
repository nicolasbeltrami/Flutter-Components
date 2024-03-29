import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
          _crearSlider(),
          Expanded(child: _crearImagen()),
        ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: '$_valorSlider',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        
        setState(() {
          _valorSlider = valor;
        });

      },
    );
    
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage(
        'https://estaticos.elperiodico.com/resources/jpg/5/9/gato-gigante-1542278122695.jpg'
      ),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }
}