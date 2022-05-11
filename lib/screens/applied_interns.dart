import 'package:flutter/material.dart';
import 'package:internship_management/widgets/my_card.dart';

class Applied_Interns extends StatefulWidget {
  const Applied_Interns({Key? key}) : super(key: key);

  @override
  _Applied_InternsState createState() => _Applied_InternsState();
}

class _Applied_InternsState extends State<Applied_Interns> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/img.jpg'),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'My Internships',
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
                      status: 'Accepted',
                    ),
                    MyCard(
                      status: 'Pending',
                    ),
                    MyCard(
                      status: 'Rejected',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
