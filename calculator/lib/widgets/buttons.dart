import 'package:calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key, required this.label, required this.textColor});
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: AppColors.secondColor,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: 36,
        child: Text(
          label,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
