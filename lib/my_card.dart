import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color(0xFFeef2fc),
          elevation: 8,
          child: Container(
            height: MediaQuery.of(context).size.height / 3.75,
            //width: MediaQuery.of(context).size.width / 1.2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        //clipBehavior: Clip.antiAlias,
                        child: Image(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 9,
                          image: AssetImage("images/img.jpg"),
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Expanded(
                        child: ListTile(
                          title: Text("Ml/AI internship"),
                          subtitle: Text("Rahul Kala"),
                          trailing: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                child: Text("Available",style: TextStyle(color: Colors.white),),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.circlePlay,size: 20,),
                              SizedBox(width: 5,),
                              Text("Start Date : 1 May 2022"),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.calendar,size: 20,),
                              SizedBox(width: 5,),
                              Text("Duration : 1 Month"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.moneyBill1Wave,size: 20,),
                              SizedBox(width: 5,),
                              Text("Stipend: 10000 Rs"),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.house,size: 20,),
                              SizedBox(width: 5,),
                              Text("Work From Home"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
