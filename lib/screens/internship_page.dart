
import 'package:flutter/material.dart';

class InternshipScreen extends StatelessWidget {

  bool faculty;
  Map<String,dynamic>data;
  InternshipScreen({required this.faculty,required this.data});


  List<Widget>skills = [];
  List<Widget>exp= [];

  @override
  Widget build(BuildContext context) {

    for(var i in data["internships"]["requirements"]["skills"]){
      skills.add(Row(
        children: [
          Icon(Icons.stop,size: 10,),
          Text(i["skill"]),
        ],
      ),);
    }

    for(var i in data["internships"]["expectations"]){
      exp.add(Row(
        children: [
          Icon(Icons.stop,size: 10,),
          Text(i["expectation"]),
        ],
      ),);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/img.jpg"),
                radius: MediaQuery.of(context).size.width/6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(data["internships"]["name"],style: TextStyle(fontSize: 24),),
              Text(data["faculty"]["name"],style: TextStyle(fontSize: 20,color: Colors.grey),),
              SizedBox(height: 10,),
              (faculty ? Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => RegisterScreen()));
                      },
                      child: const Text("See Applicants"),
                      style: ElevatedButton.styleFrom(
                          primary:Color(0xFF304675),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //minimumSize: Size(250,42)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => RegisterScreen()));
                      },
                      child: const Text("Close",style: TextStyle(color: Color(0xFF304675)),),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2,color:Color(0xFF304675) ),
                          primary:Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          //minimumSize: Size(250,42)
                      ),
                    ),
                  ),
                ),
              ],) : SizedBox()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    color: Color(0xffDEE0E0),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Course : ${data["internships"]["course"]}"),
                            Text("Start Date : ${data["internships"]["startDate"].toString().substring(0,10)}"),
                            Text("End Date : ${data["internships"]["endDate"].toString().substring(0,10)}"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Available : ${data["internships"]["isAvailable"]}"),
                            Text("Stipend : ${data["internships"]["stipend"]}"),
                            Text("Mode : ${data["internships"]["mode"]}"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                      color: Color(0xffDEE0E0),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Text("Requirements :"),
                      Row(
                        children: [
                          Icon(Icons.stop,size: 10,),
                          Text("Cg : ${data["internships"]["requirements"]["cg"]}"),
                        ],
                      ),
                      Text("Skills :"),
                      Column(
                        children: skills,
                      ),
                      Text("Expectations :"),
                      Column(

                      )
                    ],
                  ),
                ),
              ),
              (faculty ? SizedBox() : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: const Text("Apply Now"),
                  style: ElevatedButton.styleFrom(
                      primary:Color(0xFF304675),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(250,42)
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
