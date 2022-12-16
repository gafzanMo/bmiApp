import 'dart:math';

import 'package:bmi/modules/bmi_result/bmi_result.dart';
import 'package:bmi/shared/components/components.dart';
import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  bool isMale = true;
  double height = 250;
  double weight = 60;
  double age = 20;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 16, 30,1),
      appBar: AppBar(
        title: const Text(
            "BMI CALCULATOR"
        ),
        titleSpacing: 110.0,
        backgroundColor: const Color.fromRGBO(8, 16, 30,1),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState((){
                            isMale = true;
                          });
                        },
                        child: defaultBoxGender(
                            color: isMale ? Color.fromRGBO(232, 20, 75,.6) : Color.fromRGBO(14, 20, 35,1),
                            imagepath: 'assets/images/Male.png',
                            text: 'Male'),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState((){
                            isMale = false;
                          });
                        },
                        child: defaultBoxGender(
                            color: isMale ? Color.fromRGBO(14, 20, 35,1) : Color.fromRGBO(232, 20, 75,.6),
                            imagepath: 'assets/images/Female.png',
                            text: 'Female'),
                      ),
                    )
                  ],
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromRGBO(14, 20, 35,1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                            color: Colors.white30,
                            fontSize: 15.0
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 13.0,
                            ),

                          )
                        ],
                      ),
                      Slider(
                        value: height,
                        onChanged:(value){
                          setState((){
                            height = value;
                          });
                        },
                        max: 500.0,
                        min: 20,
                        thumbColor: const Color.fromRGBO(232, 20, 75,1),
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: defaultBoxWA(
                          text: 'weight',
                          value: weight,
                          FABfunction1: (){
                            setState((){
                              weight++;
                            });
                          },
                          FABfunction2: (){
                            setState((){
                              weight--;
                            });
                          },
                          icon1: Icons.add,
                          icon2: Icons.remove,
                      )
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: defaultBoxWA(
                          text: "age",
                          value: age,
                          FABfunction1: (){
                            setState((){
                              age++;
                            });
                          },
                          FABfunction2: (){
                            setState((){
                              age--;
                            });
                          },
                          icon1: Icons.add,
                          icon2: Icons.remove
                      ),
                    )
                  ],
                ),
              )
          ),
          SizedBox(
            width: double.infinity,
            height: 60.0,
            child: MaterialButton(
              onPressed: (){
                result = weight / pow(height / 100,2);
                setState((){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>bmi_result(isMale,result,age)
                    ),
                  );
                });
              },
              color: const Color.fromRGBO(232, 20, 75,1),
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
            ),
          )

        ],
      ),

    );
  }
}
