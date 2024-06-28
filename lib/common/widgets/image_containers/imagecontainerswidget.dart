import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CircularContainerCategories extends StatelessWidget {
  const CircularContainerCategories({
    super.key,
    required this.onTap,
    required this.title,
    required this.image,
    this.textcolor = Colors.white,
    this.backgroundcolor = Colors.white,
  });

  final VoidCallback onTap;
  final String title;
  final String image;
  final textcolor;
  final Color? backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: backgroundcolor),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: CustomColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: Sizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 60,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}