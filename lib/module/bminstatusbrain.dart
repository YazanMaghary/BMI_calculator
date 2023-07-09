import 'package:flutter/material.dart';
import 'bmistatus.dart';

class BmiStatusBrain {
  List<BmiStatus> bmiStatus = [
    BmiStatus(
        "UnderWieght",
        "Consider consulting with a healthcare professional or registered dietitian for personalized guidance.",
        Colors.red),
    BmiStatus(
        "Healthy weight",
        "Continue to make healthy lifestyle choices to sustain your weight status.",
        Colors.green),
    BmiStatus(
        "Overweight",
        "Evaluate your eating habits and consider making healthier food choices.",
        Colors.orange),
    BmiStatus(
        "Obese",
        "Prioritize your health and consider making long-term lifestyle changes.",
        Colors.red)
  ];
}
