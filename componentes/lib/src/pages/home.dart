import 'package:flutter/material.dart';
import 'package:componentes/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string.dart';

import 'package:componentes/src/pages/alert_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    //print(menuProvider.options);
    return FutureBuilder(
      future: menuProvider.getData(),
      //initialData:[], //Opcional
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _createItemsList(snapshot.data,context));
      },
    );
  }

  List<Widget> _createItemsList(List<dynamic> data,BuildContext context) {
    final List<Widget> items = [];
    if(data==null) return [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.orange,),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          /*final route=MaterialPageRoute(
            builder: (context)=> AlertPage(),
          );
          Navigator.push(context, route);*/
        },
      );
      items..add(widgetTemp)
          ..add(Divider());
    });
    return items;
  }
}
