import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class Form_Divider extends StatelessWidget {
  Form_Divider({super.key, required this.dark, required this.dividertext});

  final bool dark;
  final dividertext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? CustomColors.darkerGrey : CustomColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividertext),
        Flexible(
          child: Divider(
            color: dark ? CustomColors.darkerGrey : CustomColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}