import 'package:flutter/material.dart';
import 'my_card.dart';
import 'students_status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Students_status(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        // color: const Color(0xff090D22),
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: [
        //       Color(0xFF2193b0),
        //       //Colors.white,
        //       Colors.white
        //     ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/img.jpg"),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Hi, Mantraraj",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    MyCard(
                      status: 'Available',
                    ),
                    MyCard(
                      status: 'Available',
                    ),
                    MyCard(
                      status: 'Available',
                    ),
                    MyCard(
                      status: 'Available',
                    ),
                    MyCard(
                      status: 'Available',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavigationBar(),
    ));
  }
}
