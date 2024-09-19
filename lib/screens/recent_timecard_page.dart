import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sltapp/reusables/app_drawer.dart';
import 'package:sltapp/screens/timecard_review_page.dart';

class RecentTimecardPage extends StatefulWidget {
  const RecentTimecardPage({super.key});

  @override
  State<RecentTimecardPage> createState() => _RecentTimecardPageState();
}

class _RecentTimecardPageState extends State<RecentTimecardPage> {
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
                        'Recent Timecards : Dilshan Kavinda  -  019781',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
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
                          6: FlexColumnWidth(0.5),
                        },
                        children: [
                          buildRowTitle(
                            [
                              const Text(
                                'Timecard Status',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Transferred To',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Period Starting',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Period Ending',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Recorded Hours',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Submission Date',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Details',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          buildRowData(
                            [
                              const Text(
                                '24/08/30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Friday',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7:40',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '16:30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                alignment: Alignment.topCenter,
                                icon: const Icon(
                                  Icons.note_alt_outlined,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimecardReviewPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          buildRowData(
                            [
                              const Text(
                                '24/08/30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Friday',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7:40',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '16:30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                alignment: Alignment.topCenter,
                                icon: const Icon(
                                  Icons.note_alt_outlined,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimecardReviewPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          buildRowData(
                            [
                              const Text(
                                '24/08/30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Friday',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7:40',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '16:30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                alignment: Alignment.topCenter,
                                icon: const Icon(
                                  Icons.note_alt_outlined,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimecardReviewPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          buildRowData(
                            [
                              const Text(
                                '24/08/30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Friday',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7:40',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '16:30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                alignment: Alignment.topCenter,
                                icon: const Icon(
                                  Icons.note_alt_outlined,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimecardReviewPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          buildRowData(
                            [
                              const Text(
                                '24/08/30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Friday',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7:40',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '16:30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                alignment: Alignment.topCenter,
                                icon: const Icon(
                                  Icons.note_alt_outlined,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimecardReviewPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          buildRowData(
                            [
                              const Text(
                                '24/08/30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Friday',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '7:40',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                '16:30',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'HQ',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                alignment: Alignment.topCenter,
                                icon: const Icon(
                                  Icons.note_alt_outlined,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimecardReviewPage(),
                                    ),
                                  );
                                },
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
