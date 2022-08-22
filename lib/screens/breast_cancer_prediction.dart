import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:medibuddy/services/prediction_model.dart';

class BreastCancerPredict extends StatefulWidget {
  const BreastCancerPredict({super.key});

  static const id = 'breast_cancer_predict';

  @override
  State<BreastCancerPredict> createState() => _BreastCancerPredictState();
}

class _BreastCancerPredictState extends State<BreastCancerPredict> {
  String name = "";
  Map data = {
    "age": 18,
    "radius_mean": 0.0,
    "texture_mean": 0.0,
    "perimeter_mean": 0.0,
    "area_mean": 0.0,
    "smoothness_mean": 0.0,
    "compactness_mean": 0.0,
    "concavity_mean": 0.0,
    "concave_points_mean": 0.0,
    "symmetry_mean": 0.0,
    "fractal_dimension_mean": 0.0,
    "radius_se": 0.0,
    "texture_se": 0.0,
    "perimeter_se": 0.0,
    "area_se": 0.0,
    "smoothness_se": 0.0,
    "compactness_se": 0.0,
    "concavity_se": 0.0,
    "concave_points_se": 0.0,
    "symmetry_se": 0.0,
    "fractal_dimension_se": 0.0,
    "radius_worst": 0.0,
    "texture_worst": 0.0,
    "perimeter_worst": 0.0,
    "area_worst": 0.0,
    "smoothness_worst": 0.0,
    "compactness_worst": 0.0,
    "concavity_worst": 0.0,
    "concave_points_worst": 0.0,
    "symmetry_worst": 0.0,
    "fractal_dimension_worst": 0.0,
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
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: SizedBox(
              width: queryData.size.width * 0.8,
              child: TextFormField(
                autofocus: false,
                decoration:
                    const InputDecoration().copyWith(labelText: "Radius Mean"),
                maxLines: 1,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['radius_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['texture_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['perimeter_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['area_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['smoothness_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['compactness_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['concavity_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['concave_points_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['symmetry_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['fractal_dimension_mean'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['radius_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['texture_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['perimeter_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['area_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['smoothness_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['compactness_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['concavity_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['concave_points_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['symmetry_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['fractal_dimension_se'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['radius_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['texture_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['perimeter_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['area_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['smoothness_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['compactness_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['concavity_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['concave points_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['symmetry_worst'] = double.parse(value);
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    data['fractal_dimension_worst'] = double.parse(value);
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
                var res = await model.getBreastPrediction(data);
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
            title: const Text('Breast Cancer Prediction'),
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
                      "Your Breast Cancer Risk is",
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
                      'You are not suffering from Breast Cancer ✌ 💕',
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
                            'You are not suffering from Breast Cancer ✌ 💕',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: kTextColor,
                                fontFamily: 'Nunito'),
                          ),
                        )
                      : const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Text(
                            'You are having Breast Cancer 😥',
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
