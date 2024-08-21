import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/nav_text.dart';
import 'package:my_portofolio/constants/pallete.dart';
import 'package:my_portofolio/widgets/button_primary.dart';
import 'package:my_portofolio/widgets/main_container.dart';
import 'package:my_portofolio/widgets/on_hover_button.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: Palette.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          for (int i = 0; i < navTextList.length; i++)
            OnHoverButton(
              child: ButtonPrimary(
                  height: 50,
                  width: 100,
                  child: Text(
                    navTextList[i],
                    style: TextStyle(color: Palette.primaryText),
                  )),
            )
        ]),
      ),
    );
  }
}
