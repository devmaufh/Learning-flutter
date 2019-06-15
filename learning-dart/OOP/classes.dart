class Person {
  String _name;
  String _last_name;
  int _age;
  //Constructor
  Person(this._name,this._last_name,this._age);
  Person.fromPerson(){
  }
  //Getters and setters
  String get name=>_name;
  void set name(name)=>_name=name;
  String get last_name=>_last_name;
  void set last_name(last_name)=>_last_name=last_name;
  int get age=>_age;
  void set age(int age)=>_age=age;
  void info()=>print("Persona: $_name, $_last_name,$_age");
}
class Police extends Person{
  Police(String name, String last_name, int age) : super(name, last_name, age);
  @override
  void info()=>print("Policia: $_name, $_last_name,$_age, ");
}

void main(){
  var person=new Person("Mauricio", "Flores", 21);
  var person2= new Person.fromPerson();
  var policeman= new Police("Alberto", "Del rio", 35);
  person2.age=33;
  person2.name="Antonio";
  person2.last_name="Lopez";

  person.info();
  person2.info();
  policeman.info();
}