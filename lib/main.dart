import 'package:flutter/material.dart';
import 'package:wecare/login.dart';
import 'package:wecare/widgets/ItemsWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

              // Search Bar
              TextField(
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: Color(0xff545050)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd9d9d9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xff000000),
                ),
              ),

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
                        child: Card(
                          child: Container(
                            height: 83,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/give.png"),
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
              SizedBox(height: 20),
              // Donation
              Text.rich(
                TextSpan(
                    text: 'Donation',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: TextStyle(fontSize: 12),
              ),

              // Items Widget
              ItemsWidget(),
            ],
          )),
    );
  }
}
