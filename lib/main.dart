import 'package:flutter/material.dart';
import 'package:myapp/password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Protected',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PasswordScreen(),
    );
  }
}