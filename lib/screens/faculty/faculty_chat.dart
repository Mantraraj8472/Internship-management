import 'package:flutter/material.dart';

class FacultyChat extends StatefulWidget {
  const FacultyChat({Key? key}) : super(key: key);

  @override
  _FacultyChatState createState() => _FacultyChatState();
}

class _FacultyChatState extends State<FacultyChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text("Chat Page"),
      ),
    );
  }
}
