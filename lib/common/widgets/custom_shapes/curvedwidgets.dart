import 'package:flutter/cupertino.dart';

class CurvedWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    final curve1 = Offset(0, size.height - 20);
    final curve2 = Offset(30, size.height - 20);
    path.quadraticBezierTo(curve1.dx, curve1.dy, curve2.dx, curve2.dy);

    final curve3 = Offset(30, size.height - 20);
    final curve4 = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(curve3.dx, curve3.dy, curve4.dx, curve4.dy);

    final curve5 = Offset(size.width, size.height - 20);
    final curve6 = Offset(size.width, size.height);
    path.quadraticBezierTo(curve5.dx, curve5.dy, curve6.dx, curve6.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}