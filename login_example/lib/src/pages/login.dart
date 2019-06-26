import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imei_plugin/imei_plugin.dart';


class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const plataform=const MethodChannel("flutter.native/imei");
  String _imei="null";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo.jpg"),
              CircularProgressIndicator(),
              RaisedButton(
                child: Text("Ver imei"),
                onPressed: _getImei2 //(){},//_getImei,
              ),
              Text(_imei),
            ],
          ),
        ),
      ),
    );
  }
  
  Future<void> _getImei2()async{
  var imei = await ImeiPlugin.getImei;
  setState(() {
   _imei=imei; 
  });
  }
}
