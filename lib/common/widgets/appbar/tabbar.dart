import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class CustomTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: THelperFunctions.isDarkMode(context) ? Colors.black : Colors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        padding: EdgeInsets.zero,
        isScrollable: true,
        indicatorColor: CustomColors.primary,
        labelColor: THelperFunctions.isDarkMode(context)
            ? Colors.white
            : CustomColors.primary,
        unselectedLabelColor: CustomColors.darkerGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
