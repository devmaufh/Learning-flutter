import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: _callMethod,
              child: Text("Start android activity"),
            ),

            SizedBox(height: 35,),
            RaisedButton(
              onPressed: _callMethod2,
              child: Text("Start Service"),
            )
          ],
        )),
      ),
    );
  }

  _callMethod() async {
    final platform = const MethodChannel('com.devmaufh.methodChannel');
    try {
      await platform.invokeMethod('startNewActivity');
    } catch (e) {}
  }
  _callMethod2()async{
    final platform = const MethodChannel('com.devmaufh.methodChannel');
    try {
      await platform.invokeMethod('serviceStart');
    } catch (e) {}
  }
}
