import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 15),
          _cardType2(),
          SizedBox(height: 15,),
          _cardType1(),
          SizedBox(height: 15),
          _cardType2(),
          SizedBox(height: 15,),
          _cardType1(),
          SizedBox(height: 15),
          _cardType2(),
          SizedBox(height: 15,),
          _cardType1(),
          SizedBox(height: 15),
          _cardType2(),
          SizedBox(height: 15,),
          _cardType1(),
          SizedBox(height: 15),
          _cardType2(),
          SizedBox(height: 15,),
          _cardType1(),
          SizedBox(height: 15),
          _cardType2(),
          SizedBox(height: 15,),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.teal),
            title: Text("This is a fucking card jsjs"),
            subtitle: Text("Hello world💕Hello world ✨Hello world ✨Hello world ✨Hello world ✨Hello world 💕Hello world ✨Hello world ✨"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: (){},
              ),
              FlatButton(
                child: Text("Aceptar"),
                onPressed: (){},
              )
            ],
          ) 
        ],
      ),
    );
  }
  Widget _cardType2(){
    final card=Container(
        //clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage("https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration( milliseconds: 200 ),
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("What is this D:")
              )
          ],
        ),
      );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,2.0)
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: card,
      ),
    );
  }
}
