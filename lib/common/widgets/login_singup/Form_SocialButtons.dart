import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class Form_SocialButtons extends StatelessWidget {
  const Form_SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.grey,
                ),
                borderRadius: BorderRadius.circular(
                  100,
                )),
            child: IconButton(
                onPressed: () {},
                icon: const Image(
                    width: Sizes.iconMd,
                    height: Sizes.iconMd,
                    image: AssetImage(ImagesStrings.google))),
          ),
        ),
        const SizedBox(
          width: Sizes.spaceBtwItems,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.grey,
                ),
                borderRadius: BorderRadius.circular(
                  100,
                )),
            child: IconButton(
                onPressed: () {},
                icon: const Image(
                    width: Sizes.iconMd,
                    height: Sizes.iconMd,
                    image: AssetImage(ImagesStrings.facebook))),
          ),
        ),
      ],
    );
  }
}