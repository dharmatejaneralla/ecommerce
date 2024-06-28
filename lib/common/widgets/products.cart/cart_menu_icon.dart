import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key,
    required this.onpressed,
    required this.iconColor,
  });

  final VoidCallback onpressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onpressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
        Positioned(
          right: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black.withOpacity(0.6),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}