import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';

class CounselMain extends StatelessWidget {
  const CounselMain({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/images/counselMain.png',
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Counseling',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
                fontFamily: 'Nunito',
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                "~ Your therapist is here for you",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 10),
          child: Text(
            'Our team has the passion, experience, and comprehensive training to help people identify and conquer a variety of mental health issues.',
            style: TextStyle(
              fontSize: 20,
              color: kTextColor,
              fontFamily: 'Nunito',
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  children: const [
                    Text(
                      'Go ahead',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
