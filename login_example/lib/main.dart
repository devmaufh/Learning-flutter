import 'package:flutter/material.dart';
import 'package:login_example/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'login',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      routes: getApplicationRoutes(),
    );
  }
}