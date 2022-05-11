import 'package:flutter/material.dart';

class InternshipScreen extends StatefulWidget {
  const InternshipScreen({Key? key}) : super(key: key);

  @override
  _InternshipScreenState createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
  @override
  Widget build(BuildContext context) {
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
              Text("ML/AI Internship",style: TextStyle(fontSize: 24),),
              Text("Dr. Rahul Kala",style: TextStyle(fontSize: 20,color: Colors.grey),),
              SizedBox(height: 10,),
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
                            Text("Course : Artificial Intelligence"),
                            Text("Start Date : 22 May 2022"),
                            Text("End Date : 22 May 2022"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Available : true"),
                            Text("Stipend : 100000/month"),
                            Text("Mode : Work From Home"),
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
                      Text("Requirments :"),
                      Row(
                        children: [
                          Icon(Icons.stop,size: 10,),
                          Text("Cg > 8.5"),
                        ],
                      ),
                      Text("Skills :"),
                      Row(
                        children: [
                          Icon(Icons.stop,size: 10,),
                          Text("Skill 1"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.stop,size: 10,),
                          Text("Skill 2"),
                        ],
                      ),

                    
                    ],
                  ),
                ),
              ),
              Padding(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
