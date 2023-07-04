import 'package:flutter/material.dart';

import '../constants.dart';

class InputCardContent extends StatelessWidget {
  InputCardContent({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Text(
          text,
          style: kMainLabelTextStyle,
        )
      ],
    );
  }
}
