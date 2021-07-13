import 'package:dribbble_task_management/modules/layouts/people_screen.dart';
import 'package:dribbble_task_management/modules/layouts/reminder_screen.dart';
import 'package:dribbble_task_management/modules/layouts/review_screen.dart';
import 'package:dribbble_task_management/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:dribbble_task_management/modules/layouts/home_screen.dart';
import 'package:dribbble_task_management/sources/data.dart';
import 'package:hexcolor/hexcolor.dart';



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

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return gradientedWidget(
      gradientColor1: HexColor('#0d0d0d'),
      gradientColor2: HexColor('#5c2d24'),
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
        body: homeLayout[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: HexColor('#0d0d0d'),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
             setState(() {
              currentIndex=value;
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
      ),
    );
  }
}
