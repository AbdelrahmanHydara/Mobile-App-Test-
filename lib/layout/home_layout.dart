import 'package:flutter/material.dart';
import 'package:mobile_app/modules/archive_task/archive_tasks_screen.dart';
import 'package:mobile_app/modules/done_task/done_tasks_screen.dart';
import 'package:mobile_app/modules/new_task/new_tasks_screen.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayoutScreen extends StatefulWidget
{
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen>
{
  int currentIndex = 0;
  List<Widget> screens =
  [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles =
  [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  late Database database;
  @override
  void initState()
  {
    super.initState();
    createDatabase();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()
        {
          insertToDatabase();
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(()
          {
            currentIndex = index;
          });
        },
        items:
        const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  void createDatabase() async
  {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version)
        {
          print('database created');
          database.execute('CREATE TABLE Tasks (id INTEGER PRIMARY KEY, time TEXT, date TEXT, status TEXT, title TEXT)').then((value)
          {
            print('table created');
          }).catchError((error)
          {
            print('Error When Creating Table ${error.toString()}');
          });
        },
      onOpen: (database)
      {
        print('database opened');
      },
    );
  }

  void insertToDatabase()
  {
    database.transaction((txn)
    {
      txn.rawInsert('INSERT INTO Tasks (time, date, status, title) VALUES ("","","","")').then((value)
      {
        print('$value inserted successfully');
      }).catchError((error)
      {
        print('Error When Inserting New Record ${error.toString()}');
      });
     return Future((){});
    });
  }
}
