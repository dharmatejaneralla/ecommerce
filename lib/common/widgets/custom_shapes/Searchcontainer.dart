import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showbackground = true,
    this.showborder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showbackground, showborder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
            color: showbackground
                ? dark
                    ? CustomColors.dark
                    : CustomColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
            border: showborder ? Border.all(color: CustomColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: CustomColors.darkerGrey,
              ),
              const SizedBox(
                width: Sizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
