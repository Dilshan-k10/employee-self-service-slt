import 'package:flutter/material.dart';

class AbsenceTypeDropdownMenu extends StatelessWidget {
  const AbsenceTypeDropdownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DropdownMenu(
      width: 330,
      dropdownMenuEntries: <DropdownMenuEntry<String>>[
        DropdownMenuEntry(
          value: 'Annual',
          label: 'Annual Leave',
        ),
        DropdownMenuEntry(value: 'Casual', label: 'Casual Leave'),
        DropdownMenuEntry(value: 'Duty', label: 'Duty Leave'),
        DropdownMenuEntry(
            value: 'Election', label: 'Leave for voting at elections'),
        DropdownMenuEntry(value: 'Nopay', label: 'No Pay Leave'),
        DropdownMenuEntry(value: 'Short', label: 'Short Leave'),
        DropdownMenuEntry(value: 'Sick', label: 'Sick Leave'),
        DropdownMenuEntry(value: 'TradeUnion', label: 'Trade Union AGM'),
      ],
      hintText: 'Absence Type',
    );
  }
}
