import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertPage')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
