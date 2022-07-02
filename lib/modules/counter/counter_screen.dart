import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget
{
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>
{
   int counter = 1;


   void initState()
   {
     super.initState();
   }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Counter',
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: ()
                {
                  setState(()
                  {
                     counter--;
                     print(counter);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    color: Colors.grey[350],
                  ),
                  padding: EdgeInsetsDirectional.all(15.0),
                  child: Text(
                    'MINUS',
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                setState(()
                {
                  counter++;
                  print(counter);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90.0),
                  color: Colors.grey[350],
                ),
                padding: EdgeInsetsDirectional.all(15.0),
                child: Text(
                  'PLUS',
                ),
              ),
            ),
          ],
       ),
      ),
    );
  }
}




