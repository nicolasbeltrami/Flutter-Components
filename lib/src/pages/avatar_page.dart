import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.shopify.com/s/files/1/1511/4266/products/Fashion-Glasses-Small-Pet-Dogs-Cat-Glasses-Sunglasses-Eye-wear-Protection-Pet-Cool-Glasses-Pet-Photos.jpg?v=1521388987'),
              radius: 29.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('NB'),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.shopify.com/s/files/1/1511/4266/products/Fashion-Glasses-Small-Pet-Dogs-Cat-Glasses-Sunglasses-Eye-wear-Protection-Pet-Cool-Glasses-Pet-Photos.jpg?v=1521388987'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 200),
        ) ,
        ),
    );
  }
}
