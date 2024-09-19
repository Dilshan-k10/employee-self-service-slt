import 'package:flutter/material.dart';
import 'package:sltapp/constance.dart';

class LoginCard extends StatelessWidget {
  const LoginCard(
      {super.key,
      required this.onTap,
      required this.cardIcon,
      required this.cardTitle});

  final Icon cardIcon;
  final String cardTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Colors.black, width: 1.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
        child: ListTile(
          leading: cardIcon,
          title: Text(
            cardTitle,
            style: kCardTextStyle,
          ),
        ),
      ),
    );
  }
}
