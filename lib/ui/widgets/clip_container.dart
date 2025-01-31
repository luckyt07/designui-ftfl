import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/utils/constants.dart';

class ClipContainer extends CustomClipper<Path> {
  final double cutWidth; // Width of the bottom-right cut portion
  final double cutHeight; // Height of the bottom-right cut portion
  final double radius;
  ClipContainer(
      {this.cutWidth = 100,
      this.cutHeight = 50, // Default cutHeight
      this.radius = 8});

  @override
  Path getClip(Size size) {
    final path = Path();

    final height = size.height - (cutHeight + radius);
    final width = size.width - (cutWidth - radius);
    path.moveTo(0, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, height);

    path.arcToPoint(
      Offset(size.width - radius, size.height - cutHeight),
      radius: Radius.circular(radius),
    );
    path.lineTo(width, size.height - cutHeight);

    path.arcToPoint(
      Offset(size.width - cutWidth, (size.height - cutHeight) + radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.lineTo(size.width - cutWidth, size.height - radius);

    path.arcToPoint(
      Offset((size.width - cutWidth) - radius, size.height),
      radius: Radius.circular(radius),
    );

    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
