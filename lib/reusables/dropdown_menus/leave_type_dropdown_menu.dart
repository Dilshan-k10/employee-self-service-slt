import 'package:flutter/material.dart';

class LeaveTypeDropdownMenu extends StatelessWidget {
  const LeaveTypeDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownMenu(
      width: 330,
      dropdownMenuEntries: <DropdownMenuEntry<String>>[
        DropdownMenuEntry(
          value: 'firstDaySecondHalf',
          label: 'First Day Second Half',
        ),
        DropdownMenuEntry(
          value: 'firstHalf',
          label: 'First Half',
        ),
        DropdownMenuEntry(
          value: 'fullDay',
          label: 'Full Day',
        ),
        DropdownMenuEntry(
          value: 'firstDaySecondHalfLastDayFirstHalf',
          label: 'First Day Second Half & Last Day First Half',
        ),
        DropdownMenuEntry(
          value: 'lastDayFirstHalf',
          label: 'Last Day First Half',
        ),
        DropdownMenuEntry(
          value: 'secondHalf',
          label: 'Second Half',
        ),
      ],
      hintText: 'Leave Type',
    );
  }
}
