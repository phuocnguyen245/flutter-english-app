import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('English',
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000))),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 2),
                              child: Text(
                                'Qoutex',
                                style: TextStyle(
                                    height: 0.5,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ),
                            Text('TM',
                                style: TextStyle(
                                    height: 0.5,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)))
                          ],
                        ),
                      )
                    ]),
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: SizedBox(
                  height: 80, // Set height for container
                  child: RawMaterialButton(
                    onPressed: () => {print('click')},
                    child: Text('Start', style: TextStyle(fontSize: 24)),
                    shape: CircleBorder(),
                    fillColor: Colors.lightBlue,
                    constraints: BoxConstraints.tightFor(
                      width: 100.0,
                      height: 80.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
