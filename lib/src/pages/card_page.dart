import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
        _cardOne(),
        SizedBox(height: 30.0),
        _cardTwo(),
        
                      ],),
                    );
                  }
                
                Widget _cardOne() {
                  return Card(
                    child: Column(
                      children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.photo_album, color: Colors.blue,),
                            title: Text('This is a title'),
                            subtitle: Text('This is a subtitle, a good place to put some extra content in a material card, but we should try to do this in cupertino app style.'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                              FlatButton(
                                child: Text('Ok'),
                                onPressed: () {},
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text('Cancelar'),
                              )
                            ],)
                    ],
                    ),
                    );
                }
        
          _cardTwo() {
            return Card(
              child: Column(
                children: <Widget>[
                  FadeInImage(
                    image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    fadeInDuration: Duration( microseconds: 200 ),
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('No se que poner acá'))
              ],),
            );
          }
}