import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class RoundedImageWidget extends StatelessWidget {
  const RoundedImageWidget({
    super.key,
    required this.onTap,
    required this.image,
  });

  final VoidCallback onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.md),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.md),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}