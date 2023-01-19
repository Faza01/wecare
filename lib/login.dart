// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wecare/home.dart';
import 'package:wecare/register.dart';

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),

                Container(
                  child: Center(
                    child: Image(image: AssetImage('assets/wecare.png')),
                  ),
                ),

                SizedBox(height: 21),
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
                  obscureText: true,
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
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xff3B91CF),
                        minimumSize: Size(340, 20)),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                  // child: Container(
                  //   padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //       color: Color(0xff3B91CF),
                  //       borderRadius: BorderRadius.circular(10)),
                  //   child: Center(
                  //     child: Text(
                  //       'SIGN IN',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold,
                  //         fontFamily: 'Poppins',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),

                // sign up
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffA7A5A5),
                          fontFamily: 'Poppins'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff3B91CF),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ))
                  ],
                ),

                // sign in with
                SizedBox(height: 21),

                Container(
                  child: Center(
                    child: Text(
                      "---------- or sign in with -----------",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffA7A5A5),
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),

                // google
                Container(
                  child: Stack(
                    children: [
                      Positioned(
                          child: Material(
                        child: Container(
                          height: 43,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )),
                      Positioned(
                          top: 9,
                          left: 10,
                          child: Card(
                            child: Container(
                              height: 83,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/icon google.png"),
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                          top: 15,
                          child: Container(
                            child: Column(children: [
                              Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 15,
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
          )),
    );
  }
}
