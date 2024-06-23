import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: Sizes.appBarHeight,
              bottom: Sizes.defaultSpace,
              left: Sizes.defaultSpace,
              right: Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(dark
                        ? ImagesStrings.lightAppLogo
                        : ImagesStrings.darkAppLogo),
                    height: 150,
                  ),
                  Text(
                    "Welcome Back,",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Discover Limitless Choices and Unmatched Convenience.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
