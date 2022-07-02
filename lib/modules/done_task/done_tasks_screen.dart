import 'package:flutter/material.dart';

class DoneTasksScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    return Center(
      child: Text(
        'Done Tasks',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
