import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardBackgroundColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: cardBackgroundColor,
                    cardChild: IconDescription(icon: FontAwesomeIcons.mars, text: "MALE"),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: cardBackgroundColor,
                  cardChild: IconDescription(icon: FontAwesomeIcons.venus, text: "FEMALE"),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: cardBackgroundColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: cardBackgroundColor)),
                Expanded(child: ReusableCard(color: cardBackgroundColor)),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple)),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class IconDescription extends StatelessWidget {
  final IconData icon;
  final String text;

  IconDescription({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
