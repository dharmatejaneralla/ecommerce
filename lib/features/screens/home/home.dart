import 'package:ecommerce/common/layout/GridLayout.dart';
import 'package:ecommerce/features/screens/home/widgets/HomeAppBar.dart';
import 'package:ecommerce/features/screens/home/widgets/HomeCategories.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_shapes/Searchcontainer.dart';
import '../../../common/widgets/products.cart/prodcut_card_vertical.dart';
import '../../../utils/constants/image_strings.dart';
import 'widgets/HomeImageSlider.dart';
import 'widgets/PrimaryHeader.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeAppBar(),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                  const SearchContainer(text: "Search in Store"),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: Sizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Popular Categories',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: Sizes.spaceBtwItems,
                        ),
                        const HomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            HomeImageslider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridLayout(
                crossaxiscount: 2,
                itemcount: 10,
                mainaxisextent: 288,
                itembuilder: (_, index) => GestureDetector(
                  onTap: () {},
                  child: const ProductCardVertical(
                    title: 'Green Nike Air Jordans',
                    subtitle: 'Nike',
                    price: 35.00,
                    discount: true,
                    image: ImagesStrings.productImage1,
                    discount_price: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
