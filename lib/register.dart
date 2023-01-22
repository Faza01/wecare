// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wecare/login.dart';
import 'package:wecare/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                SizedBox(height: 50),

                Center(
                  child: Image(image: AssetImage('assets/wecare.png')),
                ),

                SizedBox(height: 21),
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
                TextFormField(
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
                      hintText: 'Username',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10.0)),
                ),

                SizedBox(height: 14),
                // email
                TextFormField(
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
                    hintText: 'Email',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10.0),
                  ),
                ),

                SizedBox(height: 14),
                // password
                TextFormField(
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
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10.0)),
                ),

                SizedBox(height: 20),
                //button
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xff3B91CF),
                        minimumSize: Size(340, 20)),
                    child: Text(
                      'SIGN UP',
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

                SizedBox(height: 10),

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
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff3B91CF),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ))
                  ],
                ),
                // sign in with
                SizedBox(height: 10),

                Center(
                  child: Text(
                    "---------- or sign up with -----------",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffA7A5A5),
                        fontFamily: 'Poppins'),
                  ),
                ),

                // google
                SizedBox(height: 20),

                Container(
                    height: 43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        )),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/ic_google.png'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          'Sign up with Google',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: Colors.grey),
                        ),
                      ],
                    ))),
              ],
            ),
          )),
    );
  }
}
