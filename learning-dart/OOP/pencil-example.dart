class Paper{
  String _text;
  void write(String text)=>_text=text;
  void printText()=>print(_text);
  
}
class Pencil{
  int _ink;
  Pencil(this._ink);
  void write(String text,Paper paper){
    if(_ink>0){
      String textToWrite="";
      for (var i = 0; i < text.length; i++) {
        if(_ink==0){
          print("Ink finished");
          break;
        }else{
          textToWrite+=text[i];
          _ink-=1;
        }
      }
      paper.write(textToWrite);
    }else{
      print("Ink finished");
    }
  }
  void printTint()=>print("Ink units: $_ink");
}
class Marker extends Pencil{
  Marker(int ink) : super(ink);
  void recharge(int ink)=>_ink=_ink+ink;
}

void main(){
  var paper1= new Paper();
  var marker1= new Marker(10);
  marker1.write("Hola mundo", paper1);
  marker1.printTint();
  paper1.printText();
}