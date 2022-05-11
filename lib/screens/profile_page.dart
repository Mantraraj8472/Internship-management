import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  _Profile_PageState createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                    Color(0xFF13547a),
                    Color(0xFF80d0c7),
                  ])),
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 7.25,
              left: 14,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/img.jpg"),
                      radius: MediaQuery.of(context).size.width / 6,
                    ),
                    backgroundColor: Colors.white,
                    radius: MediaQuery.of(context).size.width / 5.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Samarth Goel",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                        Text("Btech, 2nd year",style: TextStyle(fontSize: 17,color: Colors.white70,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}
