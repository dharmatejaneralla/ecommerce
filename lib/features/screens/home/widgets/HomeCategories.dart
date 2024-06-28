import 'package:flutter/material.dart';

import '../../../../common/widgets/image_containers/imagecontainerswidget.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (_, index) {
            return CircularContainerCategories(
              title: 'Categories',
              image: ImagesStrings.shoeIcon,
              onTap: () {},
            );
          }),
    );
  }
}