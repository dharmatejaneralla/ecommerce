import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/image_containers/roundedimagewidget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../controllers/CursolController.dart';

class HomeImageslider extends StatelessWidget {
  HomeImageslider({
    super.key,
  });

  final _carsoulcontroller = Get.put(HomePageCarsolController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: CarouselSlider(
            items: [
              RoundedImageWidget(
                  onTap: () {}, image: ImagesStrings.promoBanner1),
              RoundedImageWidget(
                  onTap: () {}, image: ImagesStrings.promoBanner2),
              RoundedImageWidget(
                  onTap: () {}, image: ImagesStrings.promoBanner3),
            ],
            options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, _) =>
                    _carsoulcontroller.updateindex(index)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Container(
                      height: 5,
                      width: 20,
                      decoration: BoxDecoration(
                          color: _carsoulcontroller.currentindex == i
                              ? CustomColors.primary
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}