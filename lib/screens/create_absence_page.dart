import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sltapp/reusables/dropdown_menus/absence_reason_dropdown_menu.dart';
import 'package:sltapp/reusables/dropdown_menus/leave_type_dropdown_menu.dart';
import 'package:sltapp/reusables/dropdown_menus/medical_flag_dropdown_menu.dart';
import 'package:sltapp/reusables/small_button.dart';

import '../reusables/app_drawer.dart';
import '../reusables/dropdown_menus/absence_type_dropdown_menu.dart';
import '../reusables/dropdown_menus/shift_employee_dropdown_menu.dart';

class CreateAbsencePage extends StatelessWidget {
  const CreateAbsencePage({super.key});

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
        title: const Text('Absence'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        reverse: false,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: const Icon(
                            FontAwesomeIcons.arrowLeft,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Text(
                        'Create Absence : Enter Absence Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Employee Name - M.W Dilshan Kavinda'),
                      Text('Employee Number - 019781'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Organizational Email - iit-dilshan@slt.com.lk'),
                      Text('Business Center - Sri Lanka Telecom PLC'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Absence Status - Confirmed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      AbsenceTypeDropdownMenu(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AbsenceReasonDropdownMenu(),
                      LeaveTypeDropdownMenu(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MedicalFlagDropdownMenu(),
                      ShiftEmployeeDropdownMenu(),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  child: Row(
                    children: [
                      SmallButton(buttonTitle: '   Cancel   ', onTap: () {}),
                      SmallButton(buttonTitle: 'Save for Later', onTap: () {}),
                      SmallButton(buttonTitle: '    Next    ', onTap: () {}),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
