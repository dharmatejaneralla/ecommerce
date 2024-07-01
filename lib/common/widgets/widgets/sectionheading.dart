import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    required this.showviewall,
  });

  final String title;
  final bool showviewall;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if (showviewall)
          TextButton(
            onPressed: () {},
            child: const Text(
              'View all',
            ),
          )
      ],
    );
  }
}
