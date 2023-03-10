// ignore_for_file: prefer__ructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wecare/home.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Donation')),
      body: Padding(
        padding: EdgeInsets.all(29),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                  text: 'Create your fundriser',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
              style: TextStyle(fontSize: 16),
            ),

            //Title
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Title',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.grey)),
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
            ),
            // Description
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Description',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.grey)),
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
            ),
            // Image
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Image',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.grey)),
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'image',
              ),
            ),
            // Target
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Target',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.grey)),
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                hintText: 'Rp.',
              ),
            ),
            //Duration
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Duration',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.grey)),
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            TextFormField(
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xff545050)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
            ),

            SizedBox(height: 32),
            //button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color(0xff3B91CF),
                  minimumSize: Size(360, 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(),
                child: Text(
                  'Galang Dana',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),

            SizedBox(height: 20)
          ],
        )),
      ),
    );
  }
}
