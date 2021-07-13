import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Reminder Screen',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 40
              ),
            ),
          ),
        ],
      ),
    );
  }
}
