

import 'dart:io';
import 'package:async/async.dart';

void main(){
  print("Start");

  f();
  print("stop");

}

void f()async{
  f1();
  String s1=await f2();
  print(s1);
  f3(s1);
}

void f1(){

  print("f1");
}

Future f2()async{
  String s;
  Duration duration=Duration(seconds: 10,);

   await Future.delayed(duration,(){
   print("f2");
   s="returnf2";
  });
  return s;


}

void f3(String s){
  print("f3 $s");
}