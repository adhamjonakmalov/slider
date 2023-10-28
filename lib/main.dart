import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double size = 0;
  void fn(v) {
    setState(() {
      size = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Easy Tip Calculator',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Icon(
                Icons.share,
                color: Colors.black,
              ),
            ],
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Sub-Total:',
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
                    child: Text(
                      '&020',
                      style: TextStyle(fontSize: 25),
                    ),
                    alignment: Alignment.centerLeft,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Tip%:',
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, bottom: 15),
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
                    child: Text(
                      '20',
                      style: TextStyle(fontSize: 25),
                    ),
                    alignment: Alignment.centerLeft,
                  )
                ],
              ),
              Slider(max: 100, min: 0, value: size, onChanged: fn),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Tip Amount:',
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    child: Text(
                      'cdco',
                      style: TextStyle(fontSize: 25),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    child: Text(
                      'S20',
                      style: TextStyle(fontSize: 25),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 30, top: 16),
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 200,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('RAUNND'),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 200,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'HOUND UP',
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                ),
                alignment: Alignment.center,
              ),
            ],
          )),
    );
  }
}
