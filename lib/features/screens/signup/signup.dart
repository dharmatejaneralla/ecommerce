import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/login_singup/Form_SocialButtons.dart';
import '../../../common/widgets/login_singup/divider.dart';
import 'widgets/SignUpForm.dart';
import 'widgets/SignUpHeader.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
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
              SignupHeader(),
              SignUpForm(),
              const SizedBox(
                height: Sizes.spaceBtwSections / 2,
              ),
              Form_Divider(
                  dark: dark, dividertext: 'or sign up with'.capitalize),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Form_SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}