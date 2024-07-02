import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';

class profiletile extends StatelessWidget {
  const profiletile({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    required this.onTap,
    required this.image,
  });

  final String title, subtitle, image;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage(image),
          ),
        ),
      ),
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.titleMedium!.apply(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style:
            Theme.of(context).textTheme.labelMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
          onPressed: onTap,
          icon: const Icon(
            Iconsax.edit,
            color: Colors.white,
          )),
    );
  }
}
