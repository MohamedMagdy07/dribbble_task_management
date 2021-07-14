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
    name: 'Mahmoud Magdy',
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
    name: 'Kareem Mahmoud',
    photo: 'assets/Worker.png',
  ),
];

List<Task> taskEvents = [
  Task(
    startDate: DateTime.now(),
    endDate: DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day,(DateTime.now().hour+1)),
    isDone: false,
    person: worker[0],
    title: 'mobile app',
  ),
  Task(
    startDate: DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day,(DateTime.now().hour+1)),
    endDate:DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day,(DateTime.now().hour+2)),
    isDone: true,
    person: worker[2],
    title: 'mobile game',
  ),
  Task(
    startDate: DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day,(DateTime.now().hour+2)),
    endDate: DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day,(DateTime.now().hour+3)),
    isDone: false,
    person: worker[3],
    title: 'android course',
  ),
  Task(
    startDate: DateTime.utc(DateTime.now().year,DateTime.now().month+1,DateTime.now().day,(DateTime.now().hour)),
    endDate: DateTime.utc(DateTime.now().year,DateTime.now().month+1,DateTime.now().day,(DateTime.now().hour+1)),
    isDone: false,
    person: worker[4],
    title: 'mobile app',
  ),
  Task(
    startDate: DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day+2,(DateTime.now().hour)),
    endDate: DateTime.utc(DateTime.now().year,DateTime.now().month,DateTime.now().day,(DateTime.now().hour+1)),
    isDone: false,
    person: worker[1],
    title: 'App design',
  ),
];
