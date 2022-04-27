import 'package:flutter/material.dart';

class Chat_Page extends StatefulWidget {
  const Chat_Page({Key? key}) : super(key: key);

  @override
  _Chat_PageState createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text("Chat Page"),
      ),
    );
  }
}
