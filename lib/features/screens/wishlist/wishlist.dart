import 'package:ecommerce/common/layout/GridLayout.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products.cart/prodcut_card_vertical.dart';
import 'package:ecommerce/navigationmenu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationController());
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {
                navigationController.selectedIndex.value = 0;
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  crossaxiscount: 2,
                  itemcount: 10,
                  mainaxisextent: 250,
                  itembuilder: (_, index) => const ProductCardVertical(
                      title: 'Green Jordans',
                      subtitle: 'Nike',
                      price: 35.00,
                      discount: false,
                      image: ImagesStrings.productImage1)),
            ],
          ),
        ),
      ),
    );
  }
}
