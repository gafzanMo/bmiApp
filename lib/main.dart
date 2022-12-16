import 'package:bmi/modules/bmi/bmi.dart';
import 'package:flutter/material.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      home: bmi(),
      debugShowCheckedModeBanner: false,
    );
  }

}