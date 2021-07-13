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

List<Task> taskEvents = [
  Task(
    startDate: DateTime(2021,7,13,9),
    endDate: DateTime(2021,7,13,15),
    isDone: false,
    person: worker[0],
    title: 'mobile app',
  ),
  Task(
    startDate: DateTime(2021,7,13,9),
    endDate: DateTime(2021,7,13,15),
    isDone: false,
    person: worker[4],
    title: 'mobile game',
  ),

];
