import 'package:dribbble_task_management/sources/data.dart';
import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 15,
            start: 20,
          ),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context,index)=>Person_card(
                    id: worker[index].id,
                    photo: worker[index].photo,
                    name: worker[index].name,
                    ),
                  separatorBuilder: (context,index)=>SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  itemCount: worker.length,
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget Person_card({String id ,String photo,String name})=>Row(
    children: [
      Container(
        width: 60,
        height: 60,
        child: CircleAvatar(
          backgroundImage: AssetImage(
              '$photo',
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID : $id',
              maxLines: 1,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              '$name',
              maxLines: 2,
            ),
          ],
        ),
      ),
    ],
  );

}
