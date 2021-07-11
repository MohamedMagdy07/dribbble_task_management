import 'package:dribbble_task_management/modules/layouts/people_screen.dart';
import 'package:dribbble_task_management/modules/layouts/reminder_screen.dart';
import 'package:dribbble_task_management/modules/layouts/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:dribbble_task_management/modules/layouts/home_screen.dart';
import 'package:dribbble_task_management/sources/data.dart';

class HomeLayout extends StatefulWidget {


  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {


  List<Widget> homeLayout=[
    HomeScreen(),
    ReviewScreen(),
    PeopleScreen(),
    ReminderScreen(),
  ];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
        ),
        actions: [
          CircleAvatar(
            backgroundImage:AssetImage(worker[worker.indexWhere((element) => element.id=='1')].photo),
          ),
        ],
      ),
      body: homeLayout[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value){
          setState(() {
            index=value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'review',
            icon: Icon(
              Icons.article_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'people',
            icon: Icon(
              Icons.person,
            ),
          ),
          BottomNavigationBarItem(
            label:'reminder',
            icon: Icon(
              Icons.add_alert,
            ),
          ),
        ],
      ),
    );
  }
}
