 
import 'dart:io';


void main(){
Calculator cal=Calculator();
    print("Welcome in my simple Calculator");
    var check=0;
    while (check==0) {
    print("Plesae Enter the frist Num1");
    int?num1=int.parse(stdin.readLineSync()!);
    print(num1);
    print("enter your operation + , - , / , *");

    String? operation= stdin.readLineSync();
    while(operation!="+"&& operation=="-"&& operation=="/"&& operation=="*")
    {
      print("please enter the right operation");
    }
    print("Please enter the secend num2");
    int?num2=int.parse(stdin.readLineSync()!);
    if (num1!=0&&num2!=0)
    {
    switch (operation) {
      case "+" : cal.add(num1, num2);
        break;
      case "-":cal.sub(num1, num2);
        break;
      case "*":cal.mul(num1, num2);
        break;
      case "/":cal.div(num1, num2);
        break;
      default:
    }}
    else{
      print("sorry calcalator stopped");
      check=1;
    }}
}

class Car{
  final String model;
  String color;
  Car({required this.color,required this.model});

}
class Calculator{
  Calculator();
  int add(int num1,int num2)=>num1+num2;
  int sub(int num1,int num2)=>num1-num2;
  int mul (int num1 , int num2)=>num1*num2;
  int div(int num1 ,int num2){
    return(num1~/num2);
  }
}