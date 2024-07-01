import 'package:ecommerce/common/layout/GridLayout.dart';
import 'package:ecommerce/common/widgets/products.cart/prodcut_card_vertical.dart';
import 'package:ecommerce/common/widgets/widgets/sectionheading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../categorieswidget.dart';

class SportsCategory extends StatelessWidget {
  const SportsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(
            Sizes.md,
          ),
          child: Column(
            children: [
              const CategoriesWidget(
                images: [
                  ImagesStrings.productImage1,
                  ImagesStrings.productImage2,
                  ImagesStrings.productImage3
                ],
                title: 'Nike',
                subtitle: 'Subtitle',
                producticon: ImagesStrings.clothIcon,
                verified: true,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              const SectionHeading(title: 'You may like', showviewall: true),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              GridLayout(
                crossaxiscount: 2,
                itemcount: 4,
                mainaxisextent: 228,
                itembuilder: (_, index) => const ProductCardVertical(
                    title: 'Green Joradan',
                    subtitle: 'Nike',
                    price: 35.00,
                    discount: true,
                    discount_price: 10,
                    image: ImagesStrings.productImage1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
