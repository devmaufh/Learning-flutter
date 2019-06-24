import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home:MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final double iconSize=40.0;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget Example"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new CardWidget(title: new Text("Flutter is amazing"), icon: new Icon(Icons.favorite,size: iconSize,color: Colors.red,)),
              new CardWidget(title: new Text("I'm falling in love with this :'v"), icon: new Icon(Icons.whatshot,size: iconSize,color: Colors.orange,)),
              new CardWidget(title: new Text("You should try this shit"), icon: new Icon(Icons.ac_unit,size: iconSize,color: Colors.lightBlueAccent,)),

            ],
          ),
        ),
      ),
    );
  }
}
class CardWidget extends StatelessWidget{
  final Widget title;
  final Widget icon;
  CardWidget({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(
            20.0
          ),
          child: Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }

}