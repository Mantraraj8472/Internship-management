import 'package:flutter/material.dart';
import 'package:internship_management/widgets/prof_card.dart';

class Proffesor_Page extends StatefulWidget {
  const Proffesor_Page({Key? key}) : super(key: key);

  @override
  _Proffesor_PageState createState() => _Proffesor_PageState();
}

class _Proffesor_PageState extends State<Proffesor_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Color(0xFF2193b0).withOpacity(0.3),
        //       //Colors.white,
        //       Colors.white
        //     ],
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("All Professors",style: TextStyle(fontSize: 24),),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ProffCard(),
                    ProffCard(),
                    ProffCard(),
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
