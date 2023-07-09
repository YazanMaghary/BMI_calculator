import 'package:flutter/material.dart';

import '../constant.dart';

class MyButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function fun;
  final Color color;
  final Color iconsColor;
  const MyButton({
    super.key,
    required this.name,
    required this.icon,
    required this.fun,
    required this.color,
    required this.iconsColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          fun();
        },
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 80,
                  color: iconsColor,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: textsize,
                    color: stc,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
