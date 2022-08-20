import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {Key? key,
      required this.onPress,
      required this.text,
      required this.image})
      : super(key: key);
  final VoidCallback onPress;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kSecondaryColor),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(26.0),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        onPressed: onPress,
        child: Column(children: <Widget>[
          Image.asset(image, height: 80, width: 85),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
        ]),
      ),
    );
  }
}
