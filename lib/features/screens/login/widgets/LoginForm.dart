import 'package:ecommerce/features/screens/forgot_password/forgotpassword.dart';
import 'package:ecommerce/features/screens/signup/signup.dart';
import 'package:ecommerce/navigationmenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class Login_Form extends StatelessWidget {
  final dark;

  const Login_Form({super.key, required this.dark});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Email", prefixIcon: Icon(Icons.email)),
            ),
            const SizedBox(
              height: Sizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: Sizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      Texts.rememberMe,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const ForgotPassword());
                  },
                  child: const Text('Forgot Passswrod'),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const NavigationMenu());
                  },
                  child: const Text('Sign In')),
            ),
            const SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignUpScreen());
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: dark ? Colors.white : Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}