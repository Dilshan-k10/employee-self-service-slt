import 'package:flutter/material.dart';

class AbsenceReasonDropdownMenu extends StatelessWidget {
  const AbsenceReasonDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownMenu(
      width: 330,
      dropdownMenuEntries: <DropdownMenuEntry<String>>[
        DropdownMenuEntry(
          value: 'outOfIsland',
          label: 'Out of Island',
        ),
        DropdownMenuEntry(
          value: 'personal',
          label: 'Personal Reason',
        ),
      ],
      hintText: 'Absence Reason',
    );
  }
}
