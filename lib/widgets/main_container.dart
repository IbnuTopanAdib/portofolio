import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/pallete.dart';

class MainContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  final double borderRadius;
  final String imageName;

  const MainContainer(
      {super.key,
      required this.child,
      this.borderRadius = 50,
      required this.height,
      required this.width,
      this.imageName = ''});

  @override
  Widget build(BuildContext context) {
    final double offsetX = width * 0.1;
    final double offsetY = height * 0.1;
    final double blurRadius = width * 0.1;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          // Bottom right shadow, darker
          BoxShadow(
            color: Palette.darkShadow,
            offset: Offset(offsetX, offsetY),
            blurRadius: blurRadius,
          ),
          // Top left shadow, lighter
          BoxShadow(
            color: Palette.lightShadow,
            offset: Offset(-offsetX, -offsetY),
            blurRadius: blurRadius,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
