import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/widgets/sectionheading.dart';
import 'package:ecommerce/features/screens/Profile/widgets/Settingstile.dart';
import 'package:ecommerce/features/screens/home/widgets/PrimaryHeader.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/Profiletile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),
                  profiletile(
                      title: 'Dharma Teja',
                      subtitle: 'dharmatejaneralla@gmail.com',
                      onTap: () {},
                      image: ImagesStrings.user),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Account Settings',
                    showviewall: false,
                  ),
                  const SettingsTile(
                    title: 'My Address',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.safe_home,
                  ),
                  const SettingsTile(
                    title: 'My Cart',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.shop,
                  ),
                  const SettingsTile(
                    title: 'My Orders',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.bag,
                  ),
                  const SettingsTile(
                    title: 'Bank Account',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.bank,
                  ),
                  const SettingsTile(
                    title: 'My Coupons',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.discount_circle,
                  ),
                  const SettingsTile(
                    title: 'Notifications',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.notification,
                  ),
                  const SettingsTile(
                    title: 'Account Privacy',
                    subtitle: 'Set Shopping Delivery Address',
                    icon: Iconsax.home,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  const SectionHeading(
                      title: 'App Settings', showviewall: false),
                  const SettingsTile(
                    title: 'Load Data',
                    subtitle: 'Upload Data To Firebase',
                    icon: Iconsax.data,
                  ),
                  SettingsTile(
                    title: 'Geolocation',
                    subtitle: 'Location',
                    icon: Iconsax.location,
                    trailing: Switch(value: false, onChanged: (val) {}),
                  ),
                  SettingsTile(
                    title: 'Image Quality',
                    subtitle: 'set image Quality',
                    icon: Iconsax.image,
                    trailing: Switch(value: true, onChanged: (val) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
