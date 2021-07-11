import 'package:dribbble_task_management/models/person.dart';
import 'package:dribbble_task_management/models/task.dart';

List<Person> worker = [
  Person(
    id: '1',
    name: 'Mohamed Magdy',
    photo: 'assets/manager.png',
  ),
  Person(
    id: '2',
    name: 'Maha Magdy',
    photo: 'assets/Worker.png',
  ),
  Person(
    id: '3',
    name: 'Mohamed Fikry',
    photo: 'assets/Worker.png',
  ),
  Person(
    id: '4',
    name: 'Mohamed Maher',
    photo: 'assets/Worker.png',
  ),
  Person(
    id: '5',
    name: 'Mona Ebrahim',
    photo: 'assets/Worker.png',
  ),
];

List<Task> allTasks = [
  Task(
    isDone: false,
    person: worker[0],
    title: 'mobile app',
  ),
  Task(
    isDone: false,
    person: worker[4],
    title: 'mobile game',
  ),
  Task(
    isDone: true,
    person: worker[3],
    title: 'sleeping',
  ),
  Task(
    isDone: false,
    person: worker[2],
    title: 'task 4',
  ),
  Task(
    isDone: true,
    person: worker[0],
    title: 'mobile app 2',
  ),
];
