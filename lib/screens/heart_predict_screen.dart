import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HeartPredict extends StatefulWidget {
  const HeartPredict({Key? key}) : super(key: key);

  static const id = 'heart_predict_screen';
  @override
  State<HeartPredict> createState() => _HeartPredictState();
}

class _HeartPredictState extends State<HeartPredict> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediBuddy'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Enter your age"),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do you have Anaemia?',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ToggleSwitch(
                    minWidth: 55.0,
                    minHeight: 35.0,
                    cornerRadius: 18.0,
                    activeBgColors: const [
                      [Color.fromARGB(255, 231, 120, 120)],
                      [Color.fromARGB(255, 108, 179, 111)]
                    ],
                    inactiveBgColor: const Color.fromARGB(255, 214, 207, 207),
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Yes', 'No'],
                    onToggle: (index) {
                      if (kDebugMode) {
                        print('switched to: $index');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration().copyWith(
                    labelText: "Creatinine Phosphokinase Level in blood "),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do you have Diabetes?',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ToggleSwitch(
                    minWidth: 55.0,
                    minHeight: 35.0,
                    cornerRadius: 18.0,
                    activeBgColors: const [
                      [Color.fromARGB(255, 231, 120, 120)],
                      [Color.fromARGB(255, 108, 179, 111)]
                    ],
                    inactiveBgColor: const Color.fromARGB(255, 214, 207, 207),
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Yes', 'No'],
                    onToggle: (index) {
                      if (kDebugMode) {
                        print('switched to: $index');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Ejection Fraction (EF) in blood"),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'High blood Pressure?',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ToggleSwitch(
                    minWidth: 55.0,
                    minHeight: 35.0,
                    cornerRadius: 18.0,
                    activeBgColors: const [
                      [Color.fromARGB(255, 231, 120, 120)],
                      [Color.fromARGB(255, 108, 179, 111)]
                    ],
                    inactiveBgColor: const Color.fromARGB(255, 214, 207, 207),
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Yes', 'No'],
                    onToggle: (index) {
                      if (kDebugMode) {
                        print('switched to: $index');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Enter Platelet Count"),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Serum Creatinine Level your blood"),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Serum Sodium Level in blood"),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Mention Your Sex',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ToggleSwitch(
                    minWidth: 55.0,
                    minHeight: 35.0,
                    cornerRadius: 18.0,
                    activeBgColors: const [
                      [Color.fromARGB(255, 231, 120, 120)],
                      [Color.fromARGB(255, 108, 179, 111)]
                    ],
                    inactiveBgColor: const Color.fromARGB(255, 214, 207, 207),
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Female', 'Male'],
                    onToggle: (index) {
                      if (kDebugMode) {
                        print('switched to: $index');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You do smoking?',
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ToggleSwitch(
                    minWidth: 55.0,
                    minHeight: 35.0,
                    cornerRadius: 18.0,
                    activeBgColors: const [
                      [Color.fromARGB(255, 231, 120, 120)],
                      [Color.fromARGB(255, 108, 179, 111)]
                    ],
                    inactiveBgColor: const Color.fromARGB(255, 214, 207, 207),
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Yes', 'No'],
                    onToggle: (index) {
                      if (kDebugMode) {
                        print('switched to: $index');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Number of times you had stroke"),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    if (kDebugMode) {
                      print(value);
                    }
                  });
                },
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
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
        ],
      ),
    );
  }
}
