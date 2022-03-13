import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('I am Poor'),
          backgroundColor: Colors.lightGreen[500],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/poor.png'),
          ),
        )),
  ));
}
