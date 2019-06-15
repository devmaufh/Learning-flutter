void main() {
  var name="Mauricio";
  String  last_name="Flores";
  num ag=21;
  greet(name,ag,last_name);
}
void greet(name, [num age ,String birth_day]){
  if(age!=null && birth_day!=null){
    print ("$name, $age, $birth_day");
  }else{
    print("$name");
  }
}