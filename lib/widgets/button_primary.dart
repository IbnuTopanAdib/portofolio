import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/pallete.dart';

class ButtonPrimary extends StatefulWidget {
  final double height;
  final double width;
  final Widget? child;
  final double borderRadius;

  const ButtonPrimary({
    super.key,
    required this.child,
    this.borderRadius = 50,
    required this.height,
    required this.width,
  });

  @override
  State<ButtonPrimary> createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final double offsetX = widget.width * 0.1;
    final double offsetY = widget.height * 0.1;
    final double blurRadius = widget.width * 0.1;

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: isHovered ? Palette.primaryAccent : Palette.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: isHovered ? null :[
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
        child: widget.child,
      ),
    );
  }

    void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
