import 'package:ecommerce/features/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';

class ForgotPasswordMailSent extends StatelessWidget {
  const ForgotPasswordMailSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(const LoginScreen()),
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: Sizes.appBarHeight,
              bottom: Sizes.defaultSpace,
              left: Sizes.defaultSpace,
              right: Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image:
                    const AssetImage(ImagesStrings.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Text(
                Texts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                'Email@email.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                Texts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Resend Email'),
              )
            ],
          ),
        ),
      ),
    );
  }
}