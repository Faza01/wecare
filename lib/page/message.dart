// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message')),
      body: Center(
          child: Text(
        'Message',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
