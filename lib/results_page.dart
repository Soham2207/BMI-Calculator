import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class Results_Page extends StatelessWidget {
  Results_Page(
      {@required this.bmi,
      @required this.bmiresult,
      @required this.interpretation});

  final String bmi;
  final String bmiresult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Text(
              'YOUR RESULT',
              style: kResutlTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    bmiresult,
                    style: kBMIResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmi,
                    style: kBMINumber,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    style: kResultcomment,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Bottombutton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
