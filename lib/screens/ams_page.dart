import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sltapp/reusables/large_button.dart';
import 'package:sltapp/reusables/text_input_field.dart';

import '../reusables/app_drawer.dart';
import 'attendance_page.dart';

String selectedYearMonth = DateFormat('yyyy - MM').format(DateTime.now());

class AMSPage extends StatefulWidget {
  const AMSPage({super.key});

  @override
  State<AMSPage> createState() => _AMSPageState();
}

class _AMSPageState extends State<AMSPage> {
  Future _showDatePicker() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((value) {
      setState(() {
        selectedYearMonth = DateFormat('yyyy - MM').format(value!);
      });
    });
  }

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
        title: const Text('SLT AMS'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 60,
              ),
              const TextInputField(
                hintText: 'Employee Number',
                obscureText: false,
                hMargin: 35,
                icon: Icon(Icons.account_box_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              LargeButton(
                onTap: () {
                  _showDatePicker();
                },
                buttonTitle: selectedYearMonth,
                hMargin: 35,
              ),
              const SizedBox(
                height: 20,
              ),
              LargeButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AttendancePage(
                          selectedYearMonth: selectedYearMonth,
                        );
                      },
                    ),
                  );
                },
                buttonTitle: 'View Attendance',
                hMargin: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
