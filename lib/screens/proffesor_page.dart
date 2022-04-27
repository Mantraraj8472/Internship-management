import 'package:flutter/material.dart';

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
        child: Text("Proffesor"),
      ),
    );
  }
}
