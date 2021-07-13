import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image(
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                image:NetworkImage('https://img.wallpapersafari.com/desktop/1280/1024/30/4/iJvnMf.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 50,
                end: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Manage your daily tasks',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Team and Project management with solution providing App',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#b4551f'),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: HexColor('#dd5201'),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Text(
                              'Get',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Started',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
