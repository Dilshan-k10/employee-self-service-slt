import 'package:flutter/material.dart';

class MedicalFlagDropdownMenu extends StatelessWidget {
  const MedicalFlagDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownMenu(
      width: 330,
      dropdownMenuEntries: <DropdownMenuEntry<String>>[
        DropdownMenuEntry(
          value: 'yes',
          label: 'Yes',
        ),
        DropdownMenuEntry(
          value: 'no',
          label: 'No',
        ),
      ],
      hintText: 'Medical Flag',
    );
  }
}
