import 'package:flutter/material.dart';
import '../constants/colors.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.icon, required this.label})
      : super(key: key);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: kTextColor,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
