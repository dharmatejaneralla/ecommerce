import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';

class Login_Header extends StatelessWidget {
  const Login_Header({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
              dark ? ImagesStrings.lightAppLogo : ImagesStrings.darkAppLogo),
          height: 150,
        ),
        Text(
          "Welcome Back,",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "Discover Limitless Choices and Unmatched Convenience.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}