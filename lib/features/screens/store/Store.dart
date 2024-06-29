import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/Searchcontainer.dart';
import 'package:ecommerce/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerce/features/screens/store/widgets/FeatureBrands.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [CartCounter(onpressed: () {}, iconColor: Colors.black)],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? Colors.black
                      : Colors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(Sizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: Sizes.spaceBtwItems,
                        ),
                        const SearchContainer(
                          text: 'Search',
                          showborder: true,
                          showbackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: Sizes.spaceBtwSections,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Featured Brands',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'View all',
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: Sizes.spaceBtwItems / 1.5,
                        ),
                        FeatureBrandsWidgets(
                          title: 'Nike',
                          subtitle: '250 Products',
                          image: ImagesStrings.clothIcon,
                          verified: true,
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ],
          body: Container()),
    );
  }
}
