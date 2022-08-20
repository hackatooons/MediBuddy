import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';

class Slide extends StatelessWidget {
  const Slide(
      {Key? key,
      this.text,
      this.onPress,
      this.buttonText,
      this.onChange,
      this.textField = true})
      : super(key: key);

  final String? text;
  final VoidCallback? onPress;
  final String? buttonText;
  final dynamic onChange;
  final bool? textField;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            text ?? '',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kTextColor,
              fontFamily: 'RobotoMono',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Builder(builder: (BuildContext context) {
          if (textField == true) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                maxLines: null,
                minLines: 3,
                decoration: const InputDecoration(
                  hintText: 'Enter your answer here',
                ),
                onChanged: onChange,
              ),
            );
          } else {
            return Container();
          }
        }),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          child: TextButton(
            onPressed: onPress,
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  buttonText ?? '',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
        )
      ],
    );
  }
}
