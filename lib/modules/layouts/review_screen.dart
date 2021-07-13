import 'package:dribbble_task_management/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:dribbble_task_management/sources/data.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dribbble_task_management/modules/calandar/calendar.dart';




class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {

  int tasksDone = allTasks.length -
      (allTasks.where((element) => element.isDone == true).toList().length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi ${worker[worker.indexWhere((element) => element.id == '1')].name}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$tasksDone Tasks are in process',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              defaultTask(
                task: allTasks[0],
                gradientColor2: HexColor('#62341b'),
                gradientColor1: HexColor('#1b1b1b'),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Monthly Review',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderScreen()));
                      },
                      child: Icon(
                        Icons.calendar_today,
                      ),
                  )
                ],
              ),
            ],
          ),
        ),
    );
  }
}
