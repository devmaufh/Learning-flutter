import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=>_ContadorPageState();

}
class _ContadorPageState extends State<ContadorPage>{
  final _style= new TextStyle(fontSize: 25);
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Clicks counter 🌚 ", style: _style,),
            Text("$_counter",style:_style,)
          ],
        ),
      ),
      floatingActionButton: _createButtons()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.settings_backup_restore),onPressed: _restore),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.remove),onPressed:_rest),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _add),
      ],
    );
  }
  void _add(){
    setState(()=>_counter++);
  }
  void _rest(){
    setState(()=>_counter--);
  }
  void _restore(){
    setState(()=>_counter=0);
  }
}
