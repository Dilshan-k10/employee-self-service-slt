import 'package:flutter/material.dart';
import 'package:sltapp/constance.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key, required this.buttonTitle, required this.onPressed});

  final VoidCallback onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(width: 180.0, height: 50.0),
      fillColor: kButtonBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      onPressed: onPressed,
      child: Text(
        buttonTitle,
        style: kButtonText,
      ),
    );
  }
}
