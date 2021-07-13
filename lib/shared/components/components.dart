import 'package:flutter/material.dart';
import 'package:dribbble_task_management/models/task.dart';


Widget defaultTask ({
  @required Task task,
  @required Color gradientColor1,
  @required Color gradientColor2,
  double height=140,
})=>Container(
  height:height ,
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.7,1],
        colors: [gradientColor1,gradientColor2],
      ),
      borderRadius: BorderRadius.circular(15)
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            '${task.title}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${task.person.name}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    '${task.person.photo}'
                ),
              ),
              Spacer(),
              Text(
                'Now',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);




Widget gradientedWidget({
  @required Widget widget,
  @required Color gradientColor1,
  @required Color gradientColor2,

})=>Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      stops: [0.8,1],
      colors:[gradientColor1,gradientColor2],
    ),
  ),
  child: widget,
);