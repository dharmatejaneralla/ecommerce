import 'package:flutter/material.dart';

import 'curvedwidgets.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedWidget(),
      child: child,
    );
  }
}