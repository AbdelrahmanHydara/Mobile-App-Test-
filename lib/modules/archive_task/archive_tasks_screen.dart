import 'package:flutter/material.dart';

class ArchivedTasksScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    return Center(
      child: Text(
        'Archived Tasks',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
