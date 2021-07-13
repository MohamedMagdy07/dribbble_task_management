import 'package:flutter/material.dart';
import 'package:dribbble_task_management/layout/home_layout.dart';
import 'package:dribbble_task_management/modules/loading/loading_screen.dart';
import 'package:hexcolor/hexcolor.dart';


void main(){
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:HexColor('#0d0d0d'),
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