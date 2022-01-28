import 'package:flutter/material.dart';
import 'package:points_counter_project/counter_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(
      ),
      home:CounterClass(),
    );
  }
}
