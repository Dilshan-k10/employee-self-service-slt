import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../reusables/app_drawer.dart';

class TimecardReviewPage extends StatefulWidget {
  const TimecardReviewPage({super.key});

  @override
  State<TimecardReviewPage> createState() => _TimecardReviewPageState();
}

class _TimecardReviewPageState extends State<TimecardReviewPage> {
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
        title: const Text('Recent Time Cards'),
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
                        'Review : Dilshan Kavinda  -  019781',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'Week starting : Monday, September 09 2024',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'Timecard Period : 31 Days',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'Comments',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Table(
                        border: TableBorder.all(),
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(1),
                        },
                        children: [
                          buildRowTitle(
                            [
                              const Text(
                                'Hours Type',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7DAY1',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Cost Center',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Time',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'in    -    out',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowTitle(
                            [
                              const Text(
                                'Sep 09 2024',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '07:53 - 16:20',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '12.3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TableRow buildRowTitle(List<Widget> cells, {bool isHeader = false}) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: Center(
            child: cell,
          ),
        );
      }).toList(),
    );

TableRow buildRowData(List<Widget> cells, {bool isHeader = false}) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
          child: Center(
            child: cell,
          ),
        );
      }).toList(),
    );
