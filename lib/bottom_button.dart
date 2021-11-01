import 'package:flutter/material.dart';
import 'constants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.title, @required this.onTap});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomcontainercolour,
        margin: const EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: kBottomcontainerheight,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
