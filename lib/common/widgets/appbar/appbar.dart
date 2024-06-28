import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.showbackarrow = false,
      this.leadingicon,
      this.actions,
      this.leadingonpressed});

  final Widget? title;
  final bool showbackarrow;
  final IconData? leadingicon;
  final List<Widget>? actions;
  final VoidCallback? leadingonpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
      child: AppBar(
        title: title,
        automaticallyImplyLeading: false,
        leading: showbackarrow
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Iconsax.arrow_left))
            : leadingicon != null
                ? IconButton(
                    onPressed: leadingonpressed, icon: Icon(leadingicon))
                : null,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}