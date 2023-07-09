import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/module/bminstatusbrain.dart';
import 'package:bmi_calculator/myWidget/BNB.dart';
import 'package:bmi_calculator/myWidget/myButtonWidget.dart';
import 'package:bmi_calculator/myWidget/myButtonWidget2.dart';
import 'package:bmi_calculator/pages/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double hieght = 60;
  // ignore: non_constant_identifier_names
  int Wieght = 1;
  int age = 2;
  double bmi = 0;
  Color colorMale = buttonbc1;
  Color colorFemale = buttonbc1;
  Color iconColorFemale = ftc;
  Color colorStatus = Colors.green;
  Color iconColorMale = ftc;
  String wightStatus = "";
  String advice = "";
  BmiStatusBrain bmiStatusclass = BmiStatusBrain();
  int? gender;
  void genderCheckMale() {
    setState(() {
      colorMale = buttonbcPressed;
      colorFemale = buttonbc1;
      iconColorMale = iconFocusColor;
      iconColorFemale = ftc;
      gender = 0;
    });
  }

  void genderCheckFemale() {
    setState(() {
      colorFemale = buttonbcPressed;
      colorMale = buttonbc1;
      iconColorFemale = iconFocusColor;
      iconColorMale = ftc;
      gender = 1;
    });
  }

  void funAddAge() {
    setState(() {
      if (age > 0 && age < 100) {
        age++;
      } else {
        age = 1;
      }
    });
  }

  void funMinusAge() {
    setState(() {
      if (age > 2 && age < 100) {
        age--;
      } else {
        age = 1;
      }
    });
  }

  void funAddWieght() {
    setState(() {
      if (Wieght > 0 && Wieght < 100) {
        Wieght++;
      } else {
        Wieght = 1;
      }
    });
  }

  void funMinusWieght() {
    setState(() {
      if (Wieght > 0 && Wieght < 100) {
        Wieght--;
      } else {
        Wieght = 1;
      }
    });
  }

  void bmiCalculator() {
    setState(() {
      if (gender == 0 || gender == 1) {
        bmi = Wieght / pow(hieght / 100, 2);
        if (age >= 2 && age < 20) {
          if (bmi < 14) {
            advice = bmiStatusclass.bmiStatus[0].advice;
            wightStatus = bmiStatusclass.bmiStatus[0].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[0].colorStatus;
          } else if (bmi >= 14 && bmi < 18.5) {
            advice = bmiStatusclass.bmiStatus[1].advice;
            wightStatus = bmiStatusclass.bmiStatus[1].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[1].colorStatus;
          } else if (bmi >= 18.5 && bmi < 25) {
            advice = bmiStatusclass.bmiStatus[2].advice;
            wightStatus = bmiStatusclass.bmiStatus[2].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[2].colorStatus;
          } else if (bmi >= 25) {
            advice = bmiStatusclass.bmiStatus[3].advice;
            wightStatus = bmiStatusclass.bmiStatus[3].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[3].colorStatus;
          }
        } else if (age >= 20) {
          if (bmi < 18.5) {
            advice = bmiStatusclass.bmiStatus[0].advice;
            wightStatus = bmiStatusclass.bmiStatus[0].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[0].colorStatus;
          } else if (bmi >= 18.5 && bmi < 24.9) {
            advice = bmiStatusclass.bmiStatus[1].advice;
            wightStatus = bmiStatusclass.bmiStatus[1].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[1].colorStatus;
          } else if (bmi >= 25 && bmi < 29.9) {
            advice = bmiStatusclass.bmiStatus[2].advice;
            wightStatus = bmiStatusclass.bmiStatus[2].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[2].colorStatus;
          } else if (bmi >= 30) {
            advice = bmiStatusclass.bmiStatus[3].advice;
            wightStatus = bmiStatusclass.bmiStatus[3].wightStatus;
            colorStatus = bmiStatusclass.bmiStatus[3].colorStatus;
          }
        }
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Result(
                  advice: advice,
                  bmiResult: bmi,
                  wightStatus: wightStatus,
                  color: colorStatus,
                )));
      } else {
        AwesomeDialog(
          context: context,
          dialogBackgroundColor: bc1,
          descTextStyle:
              const TextStyle(fontSize: textsize, color: Colors.white),
          titleTextStyle: const TextStyle(
              fontSize: textsizeBold,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          dialogType: DialogType.warning,
          animType: AnimType.rightSlide,
          title: 'BmiCalculator',
          desc: 'You Must choose your gender',
        ).show();
      }
      print(advice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BtnNavigationBar(fun: bmiCalculator, text: "Calculate"),
      appBar: AppBar(
        title: const Text("BMI\tCalculater"),
        centerTitle: true,
      ),
      body: Padding(
        padding: mainPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  name: "Male",
                  icon: Icons.male,
                  fun: genderCheckMale,
                  color: colorMale,
                  iconsColor: iconColorMale,
                ),
                const SizedBox(
                  width: 12,
                ),
                MyButton(
                    name: "Female",
                    icon: Icons.female,
                    fun: genderCheckFemale,
                    color: colorFemale,
                    iconsColor: iconColorFemale),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: buttonbc1,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: textsize, color: stc),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${hieght.round()}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ftc,
                              fontSize: textsizeBold),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(color: stc, fontSize: textsize),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: activColor,
                        value: hieght,
                        min: 60,
                        max: 200,
                        divisions: 200,
                        onChanged: (value) {
                          setState(() {
                            hieght = value;
                          });
                        })
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                calculateWidget(
                    type: "Wieght",
                    typevalue: Wieght,
                    funAdd: funMinusWieght,
                    funMinus: funAddWieght),
                const SizedBox(
                  width: 12,
                ),
                calculateWidget(
                    type: "Age",
                    typevalue: age,
                    funAdd: funMinusAge,
                    funMinus: funAddAge)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
