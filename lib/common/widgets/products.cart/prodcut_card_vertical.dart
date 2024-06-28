import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.sm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        boxShadow: [
          BoxShadow(
              color:
                  dark ? CustomColors.darkGrey : Colors.grey.withOpacity(0.2),
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: CustomColors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(Sizes.productImageRadius)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.productImageRadius),
                  child: const Image(
                    image: AssetImage(ImagesStrings.productImage1),
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(.5),
                        borderRadius: BorderRadius.circular(Sizes.sm)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.sm, vertical: Sizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .apply(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Green Nike Air Shoes',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.left,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Nike',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const Icon(
                      Iconsax.verify5,
                      color: CustomColors.primary,
                      size: Sizes.iconSm,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$35.00',
                      style: Theme.of(context).textTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            Sizes.cardRadiusMd,
                          ),
                          bottomRight: Radius.circular(Sizes.cardRadiusMd),
                        ),
                      ),
                      child: const SizedBox(
                        height: Sizes.iconLg * 1.2,
                        width: Sizes.iconLg * 1.2,
                        child: Center(
                            child: Icon(
                          Iconsax.add,
                          color: Colors.white,
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
