import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallApp());
}

class BasketBallApp extends StatefulWidget {
  const BasketBallApp({super.key});

  @override
  State<BasketBallApp> createState() => _BasketBallAppState();
}

class _BasketBallAppState extends State<BasketBallApp> {
  int counterA = 0;
  int counterB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50),
                        child: Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Text(
                        '$counterA',
                        style: TextStyle(
                          fontSize: 170,
                        ),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            counterA++;
                          });
                        },
                        child: Text('Add 1 Point'),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            counterA += 2;
                          });
                        },
                        child: Text('Add 2 Points'),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            counterA += 3;
                          });
                        },
                        child: Text('Add 3 Points'),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 20,
                  thickness: 10,
                  indent: 200,
                  endIndent: 200,
                  color: Colors.red,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50),
                        child: Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Text(
                        '$counterB',
                        style: TextStyle(
                          fontSize: 170,
                        ),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            counterB++;
                          });
                        },
                        child: Text('Add 1 Point'),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            counterB += 2;
                          });
                        },
                        child: Text('Add 2 Points'),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            counterB += 3;
                          });
                        },
                        child: Text('Add 3 Points'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 60),
                onPressed: () {
                  setState(() {
                    counterA = 0;
                    counterB = 0;
                  });
                },
                child: Text('Reset'),
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
