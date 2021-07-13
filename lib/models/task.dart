import 'package:dribbble_task_management/models/person.dart';
import 'package:flutter/material.dart';

class Task {
  Person person;
  String title;
  bool isDone;
  DateTime startDate;
  DateTime endDate;

  Task({
    @required this.isDone,
    @required this.person,
    @required this.title,
    @required this.startDate,
    @required this.endDate,

});

}

