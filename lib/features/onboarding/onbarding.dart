import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final PageController _controller = PageController(initialPage: 0);
var currentpage_index = 0;
class OnBoardingScreen extends StatelessWidget {
   const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged:  updatePage,
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
          onBoarding_Next()
        ],
      ),
    );
  }
}



class onBoarding_Next extends StatelessWidget {
  const onBoarding_Next({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: Sizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {nextPage(currentpage_index);},
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(side: BorderSide.none),
            backgroundColor: dark ? CustomColors.primary : CustomColors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

class onBoarding_Navigation extends StatelessWidget {
  const onBoarding_Navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: Sizes.defaultSpace+5,
      child: SmoothPageIndicator(
        controller:_controller ,
        onDotClicked: (index) => updatePage(index),
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? CustomColors.light : CustomColors.dark,
            dotHeight: 6),
      ),
    );
  }
}

class onBoarding_skip extends StatelessWidget {
  const onBoarding_skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: Sizes.defaultSpace,
      child: TextButton(
        onPressed: () {skipPage();},
        child: const Text('Skip'),
      ),
    );
  }
}

class OnBooardingPage extends StatelessWidget {
  const OnBooardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        children: [
          Image(
            height: THelperFunctions.screenHeight() * 0.6,
            width: THelperFunctions.screenWidth() * 0.8,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
  void updatePage(index) {
    currentpage_index = index;
  }

void nextPage(index) {
  if (index  < 2) {
    currentpage_index = index + 1;
    _controller.animateToPage(index+1, duration: Durations.long1 , curve: Curves.ease);
  }
}
void skipPage()
{
  currentpage_index = 2;
  _controller.animateToPage(2,duration: Durations.long1,curve: Curves.easeIn);
}