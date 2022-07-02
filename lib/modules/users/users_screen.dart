import 'package:flutter/material.dart';
import 'package:mobile_app/models/user/user_model.dart';

class UsersScreen extends StatelessWidget
{
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Abdelrahman Hydara',
      phone: '+201145632598',
    ),
    UserModel(
      id: 2,
      name: 'Ali Nasser',
      phone: '+201145365598',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+201144895598',
    ),
    UserModel(
      id: 2,
      name: 'Ali Nasser',
      phone: '+201145365598',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+201144895598',
    ),
    UserModel(
      id: 2,
      name: 'Ali Nasser',
      phone: '+201145365598',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+201144895598',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+201144895598',
    ),
    UserModel(
      id: 2,
      name: 'Ali Nasser',
      phone: '+201145365598',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+201144895598',
    ),
  ];

  UsersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Users',
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index) => buildUsersItem(users[index]),
          separatorBuilder: (context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[350],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }
  Widget buildUsersItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 45.0,
          child: Text(
            '${user.id}',
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


