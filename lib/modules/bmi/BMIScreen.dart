import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bmi_result/ResultScreen.dart';
//import 'ResultScreen.dart';

class BMIScreen extends StatefulWidget {
   //BMIScreen({Key? key}) : super(key: key);


  @override
  State<BMIScreen> createState() => _BMIScreenState(
  );
}

class _BMIScreenState extends State<BMIScreen> {
  double weight = 60;
  double height = 180;
  int age = 28;
  double result= 0;
  bool isMale = true;
  //ResultScreen Result = new ResultScreen(weight: weight, result: result.round(), height: height);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          //First
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isMale ?  Colors.indigoAccent : Colors.grey[400],
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/images/male.png'),
                            width:  60.0,
                            height: 60.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text('MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isMale ? Colors.grey[400] : Colors.indigoAccent,
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/images/female.png'),
                              width:  60.0,
                              height: 60.0,
                            ),
                            SizedBox(height: 15.0,),
                            Text('FEMALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Second
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0,),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40.0,
                          ),

                          ),
                          Text('cm',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                        value: height,
                        max: 200.0,
                        min: 120.0
                        , onChanged: (value){
                          setState(() {
                            height = value;
                          });
                    }
                    )
                  ],
                ),
              ),
            ),
          ),

          //Third
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT'),
                          Text('${weight.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'W--',
                              mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: 'W++',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          Text('${age.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                                heroTag: 'a--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                heroTag: 'a++',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Fourth "The Button"
          MaterialButton(
            child: Text(
              'Calculate'
            ) ,
            onPressed: (){
              double result = weight/pow(height/100, 2);
              print(result.round());
               Navigator.push(context,
                 MaterialPageRoute(
                   builder: (context) =>
                       BMIResultScreen(
                           weight: weight.round(), result: result.round(), height: height.round(),age: age,isMale: isMale,
                       ),

                 ),
               );
            },
          ),
        ],
      ),
    );
  }
}
