import 'package:flutter/material.dart';
import 'package:internship_management/widgets/my_card.dart';
import 'package:internship_management/networking.dart';

class FacultyHomeScreen extends StatefulWidget {
  const FacultyHomeScreen({Key? key}) : super(key: key);

  @override
  _FacultyHomeScreenState createState() => _FacultyHomeScreenState();
}

class _FacultyHomeScreenState extends State<FacultyHomeScreen> {
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
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/img.jpg"),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Welcome, Dr.Rahul Kala",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async{
                   await Functions().signin();
                  },
                  child: const Text("+ Add New Internship",style: TextStyle(color: Color(0xFF304675),fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2,color:Color(0xFF304675) ),
                    primary:Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    minimumSize: Size(250,42)
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    // MyCard(
                    //   status: "Active",
                    // ),
                    // MyCard(
                    //   status: "Active",
                    // ),
                    // MyCard(
                    //   status: "Active",
                    // ),
                    // MyCard(
                    //   status: "Active",
                    // ),
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
