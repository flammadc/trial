import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: myHome());
  }
}

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[100],
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 10),
        child: Column(
          children: [
            myProfile(),
            myName(),
            myJob(),
            myWidget(
              title: Text("widget 1"),
            ),
            myWidget(
              title: Text("widget 2"),
            ),
            myWidget(
              title: Text("widget 3"),
            ),
          ],
        ),
      ),
    );
  }
}

class myProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Image.network(
            "https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
      ),
    );
  }
}

class myName extends StatelessWidget {
  const myName({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "flamm",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class myJob extends StatelessWidget {
  const myJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Frontend Developer",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class myWidget extends StatelessWidget {
  final Widget title;
  myWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              title,
            ],
          ),
        ),
      ),
    );
  }
}
