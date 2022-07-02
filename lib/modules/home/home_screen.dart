import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar : AppBar(
          backgroundColor: Colors.teal,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print('menu clicked');
            },
          ),
          title: Text(
            'First App'
          ),
          centerTitle: true ,
          actions: [
            IconButton(
              icon: Icon(Icons.notification_important),
              onPressed: (){
                print('notification clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: (){
                print('account_circle_outlined clicked');
              },
            ),],
        iconTheme: IconThemeData(
         size: 25,
          color: Colors.white,
        ),
      ),
      body : Column(
        children: [
          Container(
            width: 300.0,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image:NetworkImage(
                    'https://hashtag.ma/wp-content/uploads/2021/04/messi-1.jpg',
                  ),
                  height:300.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.red,
                  child: Text(
                    'The Best',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
