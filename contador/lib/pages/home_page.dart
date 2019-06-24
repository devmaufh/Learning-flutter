import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final style= new TextStyle(fontSize: 25);
  final int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App title "),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de clicks ", style: style,),
            Text("0",style:style,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.whatshot),
          onPressed: (){
            print("Hello world");
          }
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

