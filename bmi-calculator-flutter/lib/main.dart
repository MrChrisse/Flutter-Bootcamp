import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Color(0xFF0d101e),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF0d101e),
        ),
      ),
      home: InputPage(),
    );
  }
}
