import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class FeatureBrandsWidgets extends StatelessWidget {
  const FeatureBrandsWidgets({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.verified,
    required this.onTap,
  });

  final String title, subtitle, image;
  final bool verified;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(Sizes.sm),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
          border: Border.all(color: Colors.grey),
          color: Colors.transparent,
        ),
        child: Container(
          width: 56,
          height: 56,
          padding: const EdgeInsets.all(Sizes.sm),
          decoration: BoxDecoration(
              color: THelperFunctions.isDarkMode(context)
                  ? Colors.black
                  : Colors.white),
          child: Row(
            children: [
              Image(
                image: AssetImage(image),
                fit: BoxFit.contain,
                color: THelperFunctions.isDarkMode(context)
                    ? Colors.white
                    : Colors.black,
              ),
              const SizedBox(
                width: Sizes.spaceBtwItems / 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      if (verified)
                        const Icon(
                          Icons.verified,
                          color: CustomColors.primary,
                          size: Sizes.iconSm,
                        )
                    ],
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: Colors.grey),
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
