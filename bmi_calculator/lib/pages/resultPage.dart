import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.interpretation, this.result});
  final String bmi;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Result"),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text("Recalculate BMI"),
              icon: Icon(Icons.refresh),
              isExtended: true,
            ),
            SizedBox(
              height: 5.0,
            )
          ],
        )));
  }
}
