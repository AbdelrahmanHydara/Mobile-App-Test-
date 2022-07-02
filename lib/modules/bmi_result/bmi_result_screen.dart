import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget
{
   final int result;
   final int age;
   final bool isMale;

   BmiResultScreen({
     required this.result,
     required this.age,
     required this.isMale,
   });

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI RESULT',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale? 'Male' : 'Female'}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 35.0,
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 35.0,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 35.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
