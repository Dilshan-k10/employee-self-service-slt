import 'package:flutter/material.dart';
import 'package:sltapp/screens/sign_page.dart';
import 'package:sltapp/themes/light_mode.dart';
import 'constance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const SignPage(),
    );
  }
}
