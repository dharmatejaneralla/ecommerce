import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../controllers/onBoardingController.dart';

class onBoarding_Next extends StatelessWidget {
  const onBoarding_Next({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
      right: Sizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(side: BorderSide.none),
            backgroundColor: dark ? CustomColors.primary : CustomColors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
