import 'package:ecommerce/common/layout/GridLayout.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/Searchcontainer.dart';
import 'package:ecommerce/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/widgets/sectionheading.dart';
import 'package:ecommerce/features/screens/store/widgets/FeatureBrands.dart';
import 'package:ecommerce/features/screens/store/widgets/brandshowcase.dart';
import 'package:ecommerce/features/screens/store/widgets/categories/Sports.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
              expandedHeight: 430,
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
                    const SectionHeading(
                        title: 'Feature Brands', showviewall: true),
                    const SizedBox(
                      height: Sizes.spaceBtwItems / 1.5,
                    ),
                    GridLayout(
                      crossaxiscount: 2,
                      itemcount: 4,
                      mainaxisextent: 80,
                      itembuilder: (_, index) => GestureDetector(
                        onTap: () {},
                        child: FeatureBrandsWidgets(
                          title: 'Nike',
                          subtitle: '250 Products kfjbviuasbiub',
                          image: ImagesStrings.clothIcon,
                          verified: true,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottom: const CustomTabbar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              SportsCategory(),
              Padding(
                padding: EdgeInsets.all(Sizes.defaultSpace),
                child: Column(
                  children: [
                    brandshowcase(
                      title: 'Wood Land',
                      subtitle: '10 products',
                      verified: false,
                      brandlogo: ImagesStrings.furnitureIcon,
                      images: [
                        ImagesStrings.productImage35,
                        ImagesStrings.productImage36,
                        ImagesStrings.productImage37
                      ],
                    ),
                  ],
                ),
              ),
              SportsCategory(),
              SportsCategory(),
              SportsCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
