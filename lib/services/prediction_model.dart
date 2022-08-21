import 'package:medibuddy/services/networking.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

const API_URI = 'http://20.198.106.110';

class PredictionModel {
  Future<dynamic> getHeartPrediction(Map body) async {
    NetworkHandler networkHelper =
        NetworkHandler(Uri.parse('$API_URI/predict_heart_disease'), body);

    var predictionData = await networkHelper.getData();
    return predictionData;
  }

  Future<dynamic> getBreastPrediction(Map body) async {
    NetworkHandler networkHelper =
        NetworkHandler(Uri.parse('$API_URI/predict_breast_cancer'), body);

    var predictionData = await networkHelper.getData();
    return predictionData;
  }

  IconData getWeatherIcon(dynamic predictionData) {
    var id = predictionData['output'];
    if (id < 30) {
      return FontAwesomeIcons.faceSmile;
    } else if (id < 60) {
      return FontAwesomeIcons.faceFrown;
    } else if (id <= 100) {
      return FontAwesomeIcons.faceSadCry;
    } else {
      return FontAwesomeIcons.faceTired;
    }
  }

  Color getColor(int id) {
    if (id < 30) {
      return Colors.green;
    } else if (id < 60) {
      return Colors.yellow;
    } else if (id <= 100) {
      return Colors.red;
    } else {
      return Colors.white;
    }
  }
}
