import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes temp"),
      ),
      body: ListView(children: _createItemsEasy()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (var item in options) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      list
        ..add(tempWidget)
        ..add(Divider(
          height: 15,
          color: Colors.grey,
        ));
    }
    return list;
  }
  List<Widget> _createItemsEasy(){
    return options.map((element){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(element),
            subtitle: Text("This is a subtitle, you can write anything"),
            leading: Icon(Icons.access_time),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: ()=>print('Aver'),
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
