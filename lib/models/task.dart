import 'package:dribbble_task_management/models/person.dart';
import 'package:flutter/material.dart';

class Task {
  Person person;
  String title;
  String name;
  bool isDone;

  Task({
    @required this.isDone,
    @required this.person,
    @required this.title,
});

}

