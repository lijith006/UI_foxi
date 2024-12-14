import 'package:calculator/constants/colors.dart';
import 'package:calculator/widgets/buttons.dart';
import 'package:calculator/widgets/custom_text_field.dart';
//import 'package:calculator/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const CustomTextField(),
          const Spacer(),
          Container(
            height: screenHeight * 0.6,
            width: double.infinity,
            padding: padding,
            decoration: decoration,
            child: const Column(
              children: [
                Row(
                  children: [
                    Button1(
                      label: 'C',
                      textColor: Colors.white,
                    ),
                    Button1(label: 'AC', textColor: Colors.white),
                    Button1(label: '/', textColor: Colors.white),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
