import 'package:ecommerce/features/screens/forgot_password/forgot_password_mailsent.dart';
import 'package:ecommerce/features/screens/login/login.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const LoginScreen());
            },
            icon: const Icon(Icons.close),
          ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Texts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                Texts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Iconsax.direct_right)),
                    ),
                    const SizedBox(
                      height: Sizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const ForgotPasswordMailSent());
                        },
                        child: const Text('Submit'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}