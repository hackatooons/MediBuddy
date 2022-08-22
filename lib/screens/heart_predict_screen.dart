import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:medibuddy/services/prediction_model.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HeartPredict extends StatefulWidget {
  const HeartPredict({Key? key}) : super(key: key);

  static const id = 'heart_predict_screen';
  @override
  State<HeartPredict> createState() => _HeartPredictState();
}

class _HeartPredictState extends State<HeartPredict> {
  String name = "";
  Map data = {
    "age": 18,
    "anaemia": 0,
    "creatinine_phosphokinase": 0.0,
    "diabetes": 0,
    "ejection_fraction": 0.0,
    "high_blood_pressure": 0,
    "platelets": 0.0,
    "serum_creatinine": 0.0,
    "serum_sodium": 0.0,
    "sex": 0,
    "smoking": 0,
    "time": 0,
  };
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediBuddy'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration:
                    const InputDecoration().copyWith(labelText: "Full Name"),
                maxLines: 1,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    name = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration().copyWith(labelText: "Age"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['age'] = int.parse(value);
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do you have Anaemia',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 30.0,
                      // cornerRadius: 18.0,
                      activeBgColors: const [
                        [Color.fromARGB(255, 231, 120, 120)],
                        [Color.fromARGB(255, 108, 179, 111)]
                      ],
                      inactiveBgColor: const Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                        setState(() {
                          data['anaemia'] = int.parse(index.toString());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Creatinine Phosphokinase"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['creatinine_phosphokinase'] = double.parse(value);
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do you have Diabetes',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 30.0,
                      // cornerRadius: 18.0,
                      activeBgColors: const [
                        [Color.fromARGB(255, 231, 120, 120)],
                        [Color.fromARGB(255, 108, 179, 111)]
                      ],
                      inactiveBgColor: const Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                        setState(() {
                          data['diabetes'] = int.parse(index.toString());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Ejection Fraction"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    if (kDebugMode) {
                      print(value);
                    }
                    data['ejection_fraction'] = double.parse(value);
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'High blood Pressure',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 30.0,
                      // cornerRadius: 18.0,
                      activeBgColors: const [
                        [Color.fromARGB(255, 231, 120, 120)],
                        [Color.fromARGB(255, 108, 179, 111)]
                      ],
                      inactiveBgColor: const Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                        setState(() {
                          data['high_blood_pressure'] =
                              int.parse(index.toString());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration:
                    const InputDecoration().copyWith(labelText: "Platelet"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['platelets'] = double.parse(value);
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Serum Creatinine"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['serum_creatinine'] = double.parse(value);
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration:
                    const InputDecoration().copyWith(labelText: "Serum Sodium"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['serum_sodium'] = double.parse(value);
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Mention Sex ( F / M)',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 30.0,
                      // cornerRadius: 18.0,
                      activeBgColors: const [
                        [Color.fromARGB(255, 231, 120, 120)],
                        [Color.fromARGB(255, 108, 179, 111)]
                      ],
                      inactiveBgColor: const Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                        setState(() {
                          data['sex'] = int.parse(index.toString());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do You do Smoking',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 30.0,
                      // cornerRadius: 18.0,
                      activeBgColors: const [
                        [Color.fromARGB(255, 231, 120, 120)],
                        [Color.fromARGB(255, 108, 179, 111)]
                      ],
                      inactiveBgColor: const Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                        setState(() {
                          data['smoking'] = int.parse(index.toString());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Stroke Occurances "),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['time'] = int.parse(value);
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () async {
                PredictionModel model = PredictionModel();
                var res = await model.getHeartPrediction(data);
                res = double.parse(res['prediction']) / 100;
                // ignore: use_build_context_synchronously
                await _showFullModal(context, res);
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                backgroundColor: kPrimaryColor,
                elevation: 1.0,
                minimumSize: Size(
                    queryData.size.width * 0.6, queryData.size.height * 0.06),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(color: kBackgroundColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showFullModal(context, data) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: "Disease Prediction data",
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Heart Failure Prediction'),
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
                  animation:
                      true, //animate when it shows progress indicator first
                  percent: data,
                  //percentage of circle
                  center: Text(
                    data < 0
                        ? 'Negative :"('
                        : (data * 100).toStringAsFixed(2) + ' %',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 28.0),
                  ), //center text, you can set Icon as well
                  footer: const Padding(
                    padding: EdgeInsets.all(28.0),
                    child: Text(
                      "Your Heart Failure Risk is",
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
                  //if data negative then red else green //corner shape of progress bar at start/end
                  progressColor: data < 0.3
                      ? Colors.green
                      : Colors.red, //color of progress bar
                ),
                if (data == 0)
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      'You are not suffering from Heart Failure ✌ 💕',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: kTextColor,
                          fontFamily: 'Nunito'),
                    ),
                  ),
                if (data != 0)
                  data < 0.3
                      ? const Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            'You are not suffering from Heart Failure ✌ 💕',
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
                            'You are suffering from Heart Failure 😥',
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
      },
    );
  }
}
