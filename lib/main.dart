import 'package:flutter/material.dart';
import 'package:handlerapp/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handlerapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.blueGrey,
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}