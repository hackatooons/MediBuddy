import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.text,
    this.icon,
    this.onPress,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: kTextColor,
              fontFamily: 'Roboto'),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: kTextColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
