
import 'dart:convert';

import 'package:http/http.dart' as http;

String fac = "";
String stu = "";

Map<String,dynamic>profile={};

Functions func = Functions();

class Functions {

  Future signin()async{
      
    http.Response response = await http.post(Uri.parse("https://aracquine-sft.herokuapp.com/users/login"),
      body: jsonEncode({
        "email" : "s1@gmail.com",
        "password" : "S1pass"
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    var data = jsonDecode(response.body);

    if(data["isFaculty"])fac = data["token"];
    else stu = data["token"];

    print(response.statusCode);
    print(response.body);
    profile["user"] = jsonDecode(response.body)["user"];
    profile["email"] =jsonDecode(response.body)["email"];
    print(stu);
    print(fac);
    
    
  }
  
  Future<Map<String,dynamic>> getAllintern()async{

    await func.signin();

    http.Response response = await http.get(Uri.parse("https://aracquine-sft.herokuapp.com/internships/getAll"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $stu',
      },
    );
    print(response.statusCode);
    Map<String,dynamic>mp={};
    var data = jsonDecode(response.body);
    //print(data);
    mp["internships"] = data["internships"];
    mp["faculty"] = data["faculties"];

    //print(mp["internships"]);
    //print(mp["faculty"]);

    return mp;

  }

  Future<Map<String,dynamic>> getinterndata(String id)async{

    http.Response response = await http.get(Uri.parse("https://aracquine-sft.herokuapp.com/internships/$id"),
      headers: <String, String>{
        'Authorization': 'Bearer $stu',
      },
    );
    print(response.statusCode);
    Map<String,dynamic>mp={};
    var data = jsonDecode(response.body);
    //print(data);
    mp["internships"] = data["internship"];
    mp["faculty"] = data["faculty"];

    //print(mp["internships"]);
    //print(mp["faculty"]);
    return mp;

  }

  Future<Map<String,dynamic>> getmyinterns()async{

    http.Response response = await http.get(Uri.parse("https://aracquine-sft.herokuapp.com/students/internships"),
      headers: <String, String>{
        'Authorization': 'Bearer $stu',
      },
    );

    print(response.statusCode);
    Map<String,dynamic>mp={};
    var data = jsonDecode(response.body);
    //print(data);
    mp["student"] = data["studentInternships"];
    mp["internships"] = data["internships"];
    mp["faculty"] = data["faculties"];

    //print(mp["internships"]);
    //print(mp["internships"]);
    return mp;

  }

  Future<Map<String,dynamic>> getAllFaculty()async{

    http.Response response = await http.get(Uri.parse("https://aracquine-sft.herokuapp.com/allFaculties"),
      headers: <String, String>{
        'Authorization': 'Bearer $stu',
      },
    );
    print(response.statusCode);
    Map<String,dynamic>mp={};
    var data = jsonDecode(response.body);
    //print(data);
    mp["faculty"] = data;

    //print(mp["internships"]);
    //print(mp["faculty"]);

    return mp;

  }

  Future<Map<String,dynamic>> getAllFacultyInterns(String id)async{

    http.Response response = await http.get(Uri.parse("https://aracquine-sft.herokuapp.com/internships/$id"),
      headers: <String, String>{
        'Authorization': 'Bearer $stu',
      },
    );
    print(response.statusCode);
    print(response.body);
    Map<String,dynamic>mp={};
    var data = jsonDecode(response.body);
    //print(data);
    mp["faculty"] = data;

    //print(mp["internships"]);
    //print(mp["faculty"]);

    return mp;

  }

  Future<Map<String,dynamic>> getFaculty(String id)async{

    http.Response response = await http.get(Uri.parse("https://aracquine-sft.herokuapp.com/facultyProfile/$id"),
      headers: <String, String>{
        'Authorization': 'Bearer $stu',
      },
    );

    print(response.statusCode);
    Map<String,dynamic>mp={};
    var data = jsonDecode(response.body);
    //print(data);
    mp["faculty"] = data["faculty"];
    mp["email"] = data["email"];

    //print(mp["internships"]);
    print(mp["faculty"]);
    return mp;

  }

}