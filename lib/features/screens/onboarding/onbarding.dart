import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/onBoardingController.dart';
import 'widgets/OnBoardingNext.dart';
import 'widgets/OnBoardingPage.dart';
import 'widgets/OnBoardingSkip.dart';
import 'widgets/onBoardingDotNavigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller.pageController,
            onPageChanged: _controller.updatepageindex,
            children: const [
              OnBooardingPage(
                image: ImagesStrings.onBoardingImage1,
                title: Texts.onBoardingTitle1,
                subtitle: Texts.onBoardingSubTitle1,
              ),
              OnBooardingPage(
                image: ImagesStrings.onBoardingImage2,
                title: Texts.onBoardingTitle2,
                subtitle: Texts.onBoardingSubTitle2,
              ),
              OnBooardingPage(
                image: ImagesStrings.onBoardingImage3,
                title: Texts.onBoardingTitle3,
                subtitle: Texts.onBoardingSubTitle3,
              )
            ],
          ),
          const onBoarding_skip(),
          const onBoarding_Navigation(),
          const onBoarding_Next()
        ],
      ),
    );
  }
}
