import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
//    getData();
  }

  Future<List<dynamic>> getData() async {
    final resp = await  rootBundle.loadString("data/menu_opts.json");
    Map dataMap = json.decode(resp);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
