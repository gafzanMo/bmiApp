import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {

  bool isMale = true;
  double result = 0 ;
  double age = 0 ;

  bmi_result(this.isMale,this.result,this.age);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 16, 30,1),
      appBar: AppBar(
        title: const Text(
            "BMI RESULT"
        ),
        titleSpacing: 100.0,
        backgroundColor: const Color.fromRGBO(8, 16, 30,1),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale? 'Male' : 'Famale'} ",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900
              ),
            ),
        Text(
          "Result : ${result.round()} ",
          style: const TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w900
          ),
        ),
    Text(
    "Age : ${age.round()} ",
    style: const TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.w900
    ),
    )

          ],
        ),
      ),
    );
  }
}
