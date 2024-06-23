import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../controllers/onBoardingController.dart';

class onBoarding_Navigation extends StatelessWidget {
  const onBoarding_Navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: Sizes.defaultSpace + 5,
      child: SmoothPageIndicator(
        controller: OnBoardingController.instance.pageController,
        onDotClicked: (index) =>
            OnBoardingController.instance.updatepageindex(index),
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? CustomColors.light : CustomColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
