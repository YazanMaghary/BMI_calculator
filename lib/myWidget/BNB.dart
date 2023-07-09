import 'package:flutter/material.dart';

import '../constant.dart';

class BtnNavigationBar extends StatelessWidget {
  final Function fun;
  final String text;
  const BtnNavigationBar({super.key, required this.fun, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            fun();
          },
          child: Text(
            text,
            style: const TextStyle(
                fontSize: textsize, fontWeight: FontWeight.bold),
          )),
    );
  }
}
