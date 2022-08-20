import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressIndicator extends StatelessWidget {
  const MyProgressIndicator({
    Key? key,
    required this.result,
  }) : super(key: key);

  static const id = 'progress_indicator_screen';
  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CircularPercentIndicator(
          //circular progress indicator
          radius: 120.0, //radius for circle
          lineWidth: 21.0, //width of circle line
          animation: true, //animate when it shows progress indicator first
          percent: (result / 100), //percentage of circle
          center: Text(
            "$result%",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 33.0),
          ), //center text, you can set Icon as well
          footer: const Padding(
            padding: EdgeInsets.all(28.0),
            child: Text(
              "Your Average Mood",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: kTextColor,
                  fontFamily: 'Nunito'),
            ),
          ), //footer text
          backgroundColor: kSecondaryColor, //backround of progress bar
          circularStrokeCap: CircularStrokeCap
              .round, //corner shape of progress bar at start/end
          progressColor: kPrimaryColor, //progress bar color
        ),
      ],
    )));
  }
}
