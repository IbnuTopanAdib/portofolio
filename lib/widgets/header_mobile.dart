import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/pallete.dart';
import 'package:my_portofolio/widgets/main_container.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback onTap;
  const HeaderMobile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Palette.backgroundColor,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 20, 5),
          child: GestureDetector(
            onTap: onTap,
            child: const MainContainer(
              borderRadius: 20,
              height: 50,
              width: 50,
              child: Icon(Icons.menu, color: Palette.primaryText),
            ),
          ),
        ),
      ),
    );
  }
}
