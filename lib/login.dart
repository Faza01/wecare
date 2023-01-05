// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

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
            SizedBox(height: 242),
            // we care

            Text(
              'Login to your Account',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
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
            Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Material(
                        child: Container(
                      height: 43,
                      decoration: BoxDecoration(
                          color: Color(0xff3B91CF),
                          borderRadius: BorderRadius.circular(10)),
                    )),
                  ),
                  Positioned(
                      top: 10,
                      left: 143,
                      child: Container(
                        height: 82,
                        width: 157,
                        child: Column(children: [
                          Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          )
                        ]),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
