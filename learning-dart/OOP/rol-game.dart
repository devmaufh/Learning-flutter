class Person{
  String _name;
  int _health;
  Person(this._name,this._health);
  void recieveAttack(int damage){
    _health-=damage;
    if(_health<=0){ 
      print("$_name is died");
      _health=0;
    }
  }
  void printDetails()=>print("Person: $_name, $_health");
}
class Soldier extends Person{
  int _attack;
  Soldier(String name,int health,this._attack): super (name,health);
  @override
  void printDetails() => print("Soldier: $_name, $_health,$_attack");

  void hit(Person person){
    person.recieveAttack(_attack);
  }
}
void main(){
  var juan= new Soldier("Juanito", 75,5);
  var didiere= new Soldier("Didiere", 100,15);  
  juan.printDetails();
  didiere.printDetails();
  print("\n");
  didiere.hit(juan);
  didiere.hit(juan);
  didiere.hit(juan);
  didiere.hit(juan);
  didiere.hit(juan);
  didiere.hit(juan);

  juan.printDetails();
}