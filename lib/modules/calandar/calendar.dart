import 'package:dribbble_task_management/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:dribbble_task_management/sources/data.dart';




class CalenderScreen extends StatefulWidget {

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {


  DateTime focusedDay=DateTime.now();
  static DateTime selectedDay=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return gradientWidget(
      gradientColor1: HexColor('#0d0d0d'),
      gradientColor2: HexColor('#5c2d24'),
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableCalendar(
                selectedDayPredicate: (day){
                  return isSameDay(selectedDay,day);
                },
                onDaySelected: (_selectedValue,_focusedDay){
                  setState(() {
                    selectedDay=_selectedValue;
                    focusedDay=_focusedDay;
                  });
                },
                calendarFormat: CalendarFormat.month,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: focusedDay,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ongoing',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context,index)=>defaultTask(
                      task: taskEvents.where((element) => element.startDate.day == selectedDay.day).toList()[index],
                      gradientColor1: HexColor('#62341b'),
                      gradientColor2: HexColor('#62341b'),
                    ),
                    separatorBuilder: (context,index)=>SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    itemCount: taskEvents.where((element) => element.startDate.day == selectedDay.day).toList().length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
