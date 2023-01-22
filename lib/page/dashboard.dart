// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wecare/widgets/ItemsWidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(29),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),

              // Row(
              //   // mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Image(
              //       image: AssetImage('assets/lg_wecare.png'),
              //       width: 70,
              //     ),
              //     Container(
              //       child: TextField(
              //         style: TextStyle(
              //             fontSize: 18,
              //             fontFamily: 'Poppins',
              //             color: Color(0xff545050)),
              //         decoration: InputDecoration(
              //           filled: true,
              //           fillColor: Color(0xffd9d9d9),
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(5),
              //             borderSide: BorderSide.none,
              //           ),
              //           hintText: "Search here",
              //           contentPadding:
              //               const EdgeInsets.symmetric(vertical: 10.0),
              //           prefixIcon: Icon(Icons.search),
              //           prefixIconColor: Color(0xff000000),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Search Bar

              SizedBox(height: 20),
              // Box
              Container(
                child: Stack(
                  children: [
                    Positioned(
                        child: Material(
                      child: Container(
                        height: 109,
                        decoration: BoxDecoration(
                            color: Color(0xff3B91CF),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )),
                    Positioned(
                      top: 9,
                      left: 10,
                      child: Container(
                        height: 83,
                        width: 111,
                        child: (Image(
                          image: AssetImage('assets/give.png'),
                        )),
                      ),
                    ),
                    Positioned(
                        top: 15,
                        left: 143,
                        child: Container(
                          width: 157,
                          child: Column(children: [
                            Text(
                              "No one has ever become poor by giving",
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
              SizedBox(height: 20),
              // Donation
              Text.rich(
                TextSpan(
                    text: 'Donation',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: TextStyle(fontSize: 12),
              ),

              //Items Widget
              // ItemsWidget(),
              // SizedBox(height: 20),
              // SizedBox(
              //   height: 10,
              //   child: GridView.count(
              //     crossAxisCount: 2,
              //     children: [
              //       for (var donation in donations)
              //         Image.asset('assets/$donations.png ')
              //     ],
              //   ),
              // ),
            ],
          )),
    );
  }
}

// final donations = ['kakek', 'pasien', 'bayi'];
