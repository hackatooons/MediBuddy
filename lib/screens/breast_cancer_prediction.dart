import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:toggle_switch/toggle_switch.dart';

class BreastCancerPredict extends StatefulWidget {
  const BreastCancerPredict({super.key});

  static const id = 'breast_cancer_predict';

  @override
  State<BreastCancerPredict> createState() => _BreastCancerPredictState();
}

class _BreastCancerPredictState extends State<BreastCancerPredict> {
  String email = "";
  String password = "";
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
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration:
                    const InputDecoration().copyWith(labelText: "Radius Mean"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Texture Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Perimeter Mean"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Area Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Smoothness Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Compactness Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Concavity Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Concave Points Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Symmetry Mean"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Fractal Dimension Mean"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Radius se"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Texture se"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Perimeter se"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Area se"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Smoothness se"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Compactness se"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Concavity se"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Concave Points se"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Symmetry se"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Fractal Dimension se"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Radius Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Texture Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Perimeter Worst"),
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
                decoration:
                    const InputDecoration().copyWith(labelText: "Area Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Smoothness Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Compactness Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Concavity Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Concave Points Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Symmetry Worst"),
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
                decoration: const InputDecoration()
                    .copyWith(labelText: "Fractal Dimension Worst"),
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
