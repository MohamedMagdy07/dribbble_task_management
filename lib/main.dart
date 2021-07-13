import 'package:flutter/material.dart';
import 'package:dribbble_task_management/layout/home_layout.dart';
import 'package:dribbble_task_management/modules/loading/loading_screen.dart';


void main(){
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=>LoadingScreen(),
        '/home':(context)=>HomeLayout(),
      },
    ),
  );
}