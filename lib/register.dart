// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(41),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            // we care

            Text(
              'Create your Account',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),

            SizedBox(height: 14),
            // username
            TextField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Username'),
            ),

            SizedBox(height: 14),
            // email
            TextField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Email'),
            ),

            SizedBox(height: 14),
            // password
            TextField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password'),
            ),

            SizedBox(height: 14),
            //button

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA7A5A5),
                      fontFamily: 'Poppins'),
                ),
                Text(
                  " Sign In",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff3B91CF),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                )
              ],
            ),
            // sign in with
            SizedBox(height: 21),

            Container(
              child: Center(
                child: Text(
                  "---------- or sign up with -----------",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA7A5A5),
                      fontFamily: 'Poppins'),
                ),
              ),
            ),

            // google
          ],
        ),
      ),
    );
  }
}
