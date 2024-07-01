import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.crossaxiscount,
    required this.itemcount,
    this.mainaxisspacing = 10,
    this.crossaxisspacing = 10,
    required this.mainaxisextent,
    required this.itembuilder,
  });

  final int crossaxiscount, itemcount;
  final double mainaxisspacing, crossaxisspacing, mainaxisextent;
  final Widget Function(BuildContext, int) itembuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemcount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossaxiscount,
        mainAxisSpacing: mainaxisspacing,
        crossAxisSpacing: crossaxisspacing,
        mainAxisExtent: mainaxisextent,
      ),
      itemBuilder: itembuilder,
    );
  }
}
