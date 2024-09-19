import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sltapp/reusables/small_button.dart';
import 'package:sltapp/screens/create_absence_page.dart';
import 'package:sltapp/screens/recent_timecard_page.dart';

import '../reusables/app_drawer.dart';
import '../reusables/dropdown_menus/absence_type_dropdown_menu.dart';
import '../reusables/dropdown_menus/approval_status_dropdown_menu.dart';

class AbsencePage extends StatefulWidget {
  const AbsencePage({super.key});

  @override
  State<AbsencePage> createState() => _AbsencePageState();
}

class _AbsencePageState extends State<AbsencePage> {
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
                        child: const Icon(
                          FontAwesomeIcons.arrowLeft,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Text(
                        'Absence Management',
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
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: AbsenceTypeDropdownMenu(),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: AprovalStatusDropdownMenu(),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownMenu(
                          dropdownMenuEntries: <DropdownMenuEntry<String>>[
                            DropdownMenuEntry(
                              value: 'Annual',
                              label: 'Annual Leave',
                            ),
                            DropdownMenuEntry(
                                value: 'Casual', label: 'Casual Leave'),
                            DropdownMenuEntry(
                                value: 'Duty', label: 'Duty Leave'),
                            DropdownMenuEntry(
                                value: 'Election',
                                label: 'Leave for voting at elections'),
                            DropdownMenuEntry(
                                value: 'Nopay', label: 'No Pay Leave'),
                            DropdownMenuEntry(
                                value: 'Short', label: 'Short Leave'),
                            DropdownMenuEntry(
                                value: 'Sick', label: 'Sick Leave'),
                            DropdownMenuEntry(
                                value: 'TradeUnion', label: 'Trade Union AGM'),
                          ],
                          hintText: 'Start Date',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: DropdownMenu(
                          dropdownMenuEntries: <DropdownMenuEntry<String>>[
                            DropdownMenuEntry(
                                value: 'Annual', label: 'Annual Leave'),
                            DropdownMenuEntry(
                                value: 'Casual', label: 'Casual Leave'),
                            DropdownMenuEntry(
                                value: 'Duty', label: 'Duty Leave'),
                            DropdownMenuEntry(
                                value: 'Election',
                                label: 'Leave for voting at elections'),
                            DropdownMenuEntry(
                                value: 'Nopay', label: 'No Pay Leave'),
                            DropdownMenuEntry(
                                value: 'Short', label: 'Short Leave'),
                            DropdownMenuEntry(
                                value: 'Sick', label: 'Sick Leave'),
                            DropdownMenuEntry(
                                value: 'TradeUnion', label: 'Trade Union AGM'),
                          ],
                          hintText: 'End Date',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SmallButton(buttonTitle: 'Go     ', onTap: () {}),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallButton(buttonTitle: 'Clear', onTap: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SmallButton(
                          buttonTitle: 'Create Absence',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CreateAbsencePage(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Table(
                    border: TableBorder.all(),
                    columnWidths: const {
                      0: FlexColumnWidth(0.75),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(0.75),
                      4: FlexColumnWidth(1),
                      5: FlexColumnWidth(1),
                      6: FlexColumnWidth(0.5),
                      7: FlexColumnWidth(0.5),
                      8: FlexColumnWidth(0.5),
                      9: FlexColumnWidth(0.5),
                    },
                    children: [
                      buildRowTitle(
                        [
                          const Text(
                            'End Date',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Absence Type',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Duration',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Approval Status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Absence Status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Supporting Documents',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Details',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Update',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Confirm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Delete',
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
                            'Special work arrangement',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            '22',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Approved',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Confirmed',
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.add_photo_alternate_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.note_alt_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.edit,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.done_all_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
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
                            'Special work arrangement',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            '22',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Approved',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Confirmed',
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.add_photo_alternate_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.note_alt_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.edit,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.done_all_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
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
                            'Sick leave',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            '22',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Approved',
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Confirmed',
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.add_photo_alternate_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.note_alt_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.edit,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.done_all_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            alignment: Alignment.topCenter,
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              size: 16,
                            ),
                            onPressed: () {},
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
