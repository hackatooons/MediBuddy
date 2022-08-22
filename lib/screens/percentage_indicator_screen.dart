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
      appBar: AppBar(
        title: const Text('MediBuddy'),
      ),
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
              percent: result < 0 ? 0 : result / 100,
              //percentage of circle
              center: Text(
                result < 0 ? 'Negative :"(' : '${result.toStringAsFixed(2)} %',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 28.0),
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
              backgroundColor: const Color.fromARGB(
                  255, 207, 235, 232), //backround of progress bar
              circularStrokeCap: CircularStrokeCap.round,
              //if result negative then red else green //corner shape of progress bar at start/end
              progressColor: result < 0.3
                  ? Colors.red
                  : Colors.green, //color of progress bar
            ),
            if (result == 0)
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'Bingo! You are in a Neutral mood. Have a good day👻',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: kTextColor,
                      fontFamily: 'Nunito'),
                ),
              ),
            if (result != 0)
              result < 0.3
                  ? const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        'Do not worry, everything will be fine. Consult a doctor if needed. Eat chocolate! ✌ 💕',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: kTextColor,
                            fontFamily: 'Nunito'),
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        'You are in a good mood, Enjoy your day! and don\'t forget to eat chocolate! 🍫',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: kTextColor,
                            fontFamily: 'Nunito'),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
