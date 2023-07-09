import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class calculateWidget extends StatelessWidget {
  final String type;
  final int typevalue;
  final Function funAdd;
  final Function funMinus;
  const calculateWidget(
      {super.key,
      required this.type,
      required this.typevalue,
      required this.funAdd,
      required this.funMinus});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: buttonbc1, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Text(
              "$type",
              style: const TextStyle(
                fontSize: textsize,
                color: stc,
              ),
            ),
            Text(
              // ignore: unnecessary_string_interpolations
              "$typevalue",
              style: const TextStyle(
                fontSize: textsizeBold,
                color: ftc,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                        backgroundColor: buttonbc2,
                        foregroundColor: ftc),
                    onPressed: () {
                      funAdd();
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                        backgroundColor: buttonbc2,
                        foregroundColor: ftc),
                    onPressed: () {
                      funMinus();
                    },
                    child: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
