import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {Key? key, required this.icon, required this.updateValue})
      : super(key: key);
  final IconData icon;
  final VoidCallback updateValue;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      fillColor: const Color(0xFF4C4F5E),
      onPressed: updateValue,
      shape: const CircleBorder(),
      child: Icon(
        icon,
        color: kBackgroundColor,
      ),
    );
  }
}
