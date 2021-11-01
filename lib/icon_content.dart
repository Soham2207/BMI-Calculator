import 'package:flutter/material.dart';
import 'constants.dart';

class MaleorFemale extends StatelessWidget {
  MaleorFemale({@required this.icon, @required this.gender});
  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
