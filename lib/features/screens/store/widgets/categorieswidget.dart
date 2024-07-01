import 'package:flutter/material.dart';

import 'brandshowcase.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.images,
    required this.title,
    required this.subtitle,
    required this.producticon,
    required this.verified,
  });

  final List<String> images;
  final String title, subtitle, producticon;
  final bool verified;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        brandshowcase(
          title: title,
          subtitle: subtitle,
          verified: verified,
          brandlogo: producticon,
          images: images,
        ),
      ],
    );
  }
}
