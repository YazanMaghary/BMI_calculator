import 'package:bmi_calculator/myWidget/BNB.dart';
import '../constant.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double bmiResult;
  final String wightStatus;
  final String advice;
  final Color color;
  const Result(
      {super.key,
      required this.bmiResult,
      required this.wightStatus,
      required this.advice,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BtnNavigationBar(
          fun: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          text: "ReCalculate"),
      appBar: AppBar(
        title: const Text("BMI\tCalculater"),
        centerTitle: true,
      ),
      body: Padding(
        padding: mainPadding,
        child: Column(
          children: [
            const Text(
              "Your Result",
              style: TextStyle(
                  fontSize: textsizeBold + 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  decoration: BoxDecoration(
                      color: buttonbc3,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        wightStatus,
                        style: TextStyle(
                            color: color,
                            fontSize: textsize,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${double.parse(bmiResult.toStringAsFixed(2))}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: textsizeBold + 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        advice,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: textsize,
                        ),
                      ),
                    ],
                  ),
                )),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
