import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'brandproductsimagewiget.dart';

class brandshowcase extends StatelessWidget {
  const brandshowcase({
    super.key,
    required this.title,
    required this.subtitle,
    this.verified = false,
    required this.brandlogo,
    required this.images,
  });

  final String title, subtitle, brandlogo;
  final bool verified;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(Sizes.cardRadiusMd),
          border: Border.all(
              color: THelperFunctions.isDarkMode(context)
                  ? CustomColors.darkGrey
                  : Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Image(
                    color: THelperFunctions.isDarkMode(context)
                        ? Colors.white
                        : Colors.black,
                    height: 50,
                    fit: BoxFit.contain,
                    image: AssetImage(brandlogo),
                  ),
                ),
                const SizedBox(
                  width: Sizes.spaceBtwItems / 2,
                ),
                Expanded(
                  child: Column(
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
                  ),
                )
              ],
            ),
            const SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            Row(
                children: images
                    .map((image) => brnadproductimage(image, context))
                    .toList())
          ],
        ),
      ),
    );
  }
}
