import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String advice;
  final String bmiNumber;

  ResultsPage({this.advice, this.bmiResult, this.bmiNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    bmiNumber,
                    style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    advice,
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                "Re-Calculate",
                style: kButtonTextStyle,
              )),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomNavigationBarHeight,
            ),
          )
        ],
      ),
    );
  }
}
