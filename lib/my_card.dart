import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends StatelessWidget {
  String status;
  MyCard({required this.status});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: const Color(0xFFD0D0D0),
          elevation: 8,
          child: Container(
            color: Color(0xffDEE0E0),
            height: MediaQuery.of(context).size.height / 4.4,
            // width: MediaQuery.of(context).size.width / 2.5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        //clipBehavior: Clip.antiAlias,
                        child: Image(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 9,
                          image: const AssetImage("images/img.jpg"),
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Expanded(
                        child: ListTile(
                          title: const Text("Ml/AI internship"),
                          subtitle: const Text("Rahul Kala"),
                          trailing: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: (status == "Accepted" ||
                                          status == "Available")
                                      ? Colors.green
                                      : (status == "Pending"
                                          ? Colors.grey
                                          : Colors.red)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                child: Text(
                                  "$status",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.circlePlay,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Start on : 1 May 2022"),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.calendar,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Duration : 1 Month"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.moneyBill1Wave,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Stipend: 10000 Rs"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.house,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
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
