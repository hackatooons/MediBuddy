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
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Full Name"),
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
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration().copyWith(labelText: "Age"),
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
                      inactiveBgColor: Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration().copyWith(
                    labelText: "Creatinine Phosphokinase"),
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
                      inactiveBgColor: Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Ejection Fraction"),
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
                      inactiveBgColor: Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Platelet"),
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
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Serum Creatinine"),
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
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Serum Sodium"),
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
                      inactiveBgColor: Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
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
                      inactiveBgColor: Color.fromARGB(255, 236, 230, 230),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Yes', 'No'],
                      onToggle: (index) {
                        if (kDebugMode) {
                          print('switched to: $index');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration()
                    .copyWith(labelText: "Stroke Occurances "),
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
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
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
          ),
        ],
      ),
    );
  }
}
