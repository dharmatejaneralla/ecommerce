import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/login_singup/Form_SocialButtons.dart';
import '../../../common/widgets/login_singup/divider.dart';
import '../../../utils/constants/sizes.dart';
import 'widgets/LoginForm.dart';
import 'widgets/LoginHeader.dart';

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
              Login_Header(dark: dark),
              Login_Form(dark: dark),
              Form_Divider(
                dark: dark,
                dividertext: 'Or Sign in with'.capitalize!,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              const Form_SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}