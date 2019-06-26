import 'package:flutter/material.dart';
import 'package:login_example/src/pages/login.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'login': (BuildContext context) => LoginPage(),
  };
}