// import 'package:flutter/material.dart';
//
//
// const ktextfield = InputDecoration(
//   contentPadding:
//   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//   ),
//   enabledBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
//     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//   ),
// );
//
//
// class SignUpPage extends StatefulWidget {
//   const SignUpPage({Key? key}) : super(key: key);
//
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//
//   late String branch,currsem , name,yearofgrad , number, email, pass,degree,inititute,resume,abilities;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Register"),
//         backgroundColor: Color(0xFF304675),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 decoration: ktextfield.copyWith(hintText: "Name"),
//                 onChanged: (String value) {
//                   name = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 decoration: ktextfield.copyWith(hintText: "City"),
//                 onChanged: (String value) {
//                   city = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 decoration: ktextfield.copyWith(hintText: "Street"),
//                 onChanged: (String value) {
//                   street = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 decoration: ktextfield.copyWith(hintText: "Pincode"),
//                 onChanged: (String value) {
//                   pincode = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 decoration: ktextfield.copyWith(hintText: "Number"),
//                 onChanged: (String value) {
//                   number = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: ktextfield.copyWith(hintText: "Email"),
//                 onChanged: (String value) {
//                   email = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: true,
//                 decoration: ktextfield.copyWith(hintText: "Password"),
//                 onChanged: (String value) {
//                   pass = value;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: ElevatedButton(
//                 onPressed: () async {
//
//                   // if (await func.signin(email, password)) {
//                   //   //await func.profileinfo(email);
//                   //   //String name = await func.userpower();
//                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
//
//                   // } else {
//                   //   const snackbar = SnackBar(
//                   //     backgroundColor: Colors.blueGrey,
//                   //     behavior: SnackBarBehavior.floating,
//                   //     content: Text(
//                   //       "Incorrect User Credentials",
//                   //       style: TextStyle(color: Colors.red),
//                   //     ),
//                   //   );
//                   //   ScaffoldMessenger.of(context).showSnackBar(snackbar);
//                   // }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Color(0xFF304675),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   minimumSize: Size(250, 42),
//                 ),
//                 child: const Text("Register"),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
