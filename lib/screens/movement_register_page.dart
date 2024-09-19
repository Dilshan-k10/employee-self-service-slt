import 'package:flutter/material.dart';

import '../reusables/app_drawer.dart';

class MovementRegisterPage extends StatefulWidget {
  const MovementRegisterPage({super.key});

  @override
  State<MovementRegisterPage> createState() => _MovementRegisterPageState();
}

class _MovementRegisterPageState extends State<MovementRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'images/sltlogo.png',
            ),
          ),
        ],
        title: const Text('Movement Register'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      drawer: const AppDrawer(),
      body: const SafeArea(child: Center()),
    );
  }
}
