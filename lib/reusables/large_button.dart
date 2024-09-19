import 'package:flutter/material.dart';
import 'package:sltapp/constance.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
    required this.hMargin,
  });
  final VoidCallback onTap;
  final String buttonTitle;
  final double hMargin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: hMargin),
        child: Container(
          decoration: BoxDecoration(
            // border: Border.all(
            //   color: Colors.black,
            //   width: 1,
            // ),
            borderRadius: BorderRadius.circular(8.0),
            color: Theme.of(context).colorScheme.primary,
          ),
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(buttonTitle,
              style: kButtonText.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
