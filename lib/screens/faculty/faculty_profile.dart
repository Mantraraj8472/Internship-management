import 'package:flutter/material.dart';

class FacultyProfile extends StatefulWidget {
  const FacultyProfile({Key? key}) : super(key: key);

  @override
  _FacultyProfileState createState() => _FacultyProfileState();
}

class _FacultyProfileState extends State<FacultyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text("Chat Page"),
      ),
    );
  }
}
