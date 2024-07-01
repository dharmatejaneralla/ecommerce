import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

@override
Widget brnadproductimage(String image, context) {
  return Expanded(
    child: Container(
      height: 100,
      padding: const EdgeInsets.all(Sizes.md),
      margin: const EdgeInsets.only(right: Sizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.iconLg),
        color: THelperFunctions.isDarkMode(context)
            ? CustomColors.darkerGrey
            : CustomColors.light,
      ),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}
