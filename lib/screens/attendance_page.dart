import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sltapp/reusables/large_button.dart';
import 'package:sltapp/screens/ams_page.dart';

import '../reusables/app_drawer.dart';
import '../reusables/small_button.dart';
import '../reusables/text_input_field.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({
    super.key,
    required this.selectedYearMonth,
  });

  final selectedYearMonth;

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
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
      body: SingleChildScrollView(
        reverse: false,
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        children: [
                          TextInputField(
                            hintText: 'Employee Number',
                            obscureText: false,
                            hMargin: 10,
                            icon: Icon(Icons.account_box_outlined),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          LargeButton(
                            onTap: () {},
                            buttonTitle: selectedYearMonth,
                            hMargin: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                LargeButton(
                    onTap: () {}, buttonTitle: 'View Attendance', hMargin: 35),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            SmallButton(
                              buttonTitle: 'Copy',
                              onTap: () {},
                            ),
                            SmallButton(buttonTitle: 'CSV', onTap: () {}),
                            SmallButton(buttonTitle: 'Excel', onTap: () {}),
                            SmallButton(buttonTitle: 'PDF', onTap: () {}),
                            SmallButton(buttonTitle: 'Print', onTap: () {}),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Row(
                          children: [
                            SearchBar(
                              leading: Icon(
                                Icons.search,
                              ),
                              hintText: 'Search',
                              constraints: BoxConstraints(
                                  maxWidth: 170, maxHeight: 70, minHeight: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Table(
                            border: TableBorder.all(),
                            columnWidths: const {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(1),
                              2: FlexColumnWidth(1),
                              3: FlexColumnWidth(1),
                              4: FlexColumnWidth(1),
                              5: FlexColumnWidth(1),
                              6: FlexColumnWidth(1),
                              7: FlexColumnWidth(0.5),
                            },
                            children: const [
                              TableRow(
                                children: <Widget>[
                                  TableHeader(headerTitle: 'Date'),
                                  TableHeader(headerTitle: 'Day'),
                                  TableHeader(headerTitle: 'In Time'),
                                  TableHeader(headerTitle: 'Out Time'),
                                  TableHeader(headerTitle: 'In Location'),
                                  TableHeader(headerTitle: 'Out Location'),
                                  TableHeader(headerTitle: 'hours'),
                                  TableHeader(headerTitle: ''),
                                ],
                              ),
                              TableRow(
                                children: <Widget>[
                                  TableData(
                                    tableData: '24/08/30',
                                  ),
                                  TableData(
                                    tableData: 'Friday',
                                  ),
                                  TableData(
                                    tableData: '7:40',
                                  ),
                                  TableData(
                                    tableData: '16:30',
                                  ),
                                  TableData(
                                    tableData: 'HQ',
                                  ),
                                  TableData(
                                    tableData: 'HQ',
                                  ),
                                  TableData(
                                    tableData: '8',
                                  ),
                                  TableData(
                                    tableData: '',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TableData extends StatelessWidget {
  const TableData({
    super.key,
    required this.tableData,
  });

  final String tableData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Text(
        tableData,
        style: const TextStyle(fontSize: 12, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
    required this.headerTitle,
  });

  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
      child: Text(
        headerTitle,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}
