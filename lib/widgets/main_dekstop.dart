import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/pallete.dart';
import 'package:my_portofolio/widgets/button_primary.dart';
import 'package:my_portofolio/widgets/main_container.dart';
import 'package:flutter_glow/flutter_glow.dart';

class MainDekstop extends StatelessWidget {
  const MainDekstop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
        constraints: const BoxConstraints(minHeight: 350.0),
        height: screenHeight / 1.2,
        width: double.infinity,
        color: Palette.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey,',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Palette.primaryText,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'I\'m Ibnu Topan Adib Amrulloh',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    color: Palette.primaryText,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Software Engineer',
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Palette.primaryAccent,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Palette
                                .primaryAccent, // Sesuaikan dengan warna yang diinginkan
                            offset: Offset(0, 0), // Posisi bayangan
                          ),
                        ],
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonPrimary(
                        child: Text('Contact Me'), height: 50, width: 100),
                    SizedBox(
                      width: 40,
                    ),
                    ButtonPrimary(
                        child: Text('Learn More'), height: 50, width: 100),
                  ],
                )
              ],
            ),
            MainContainer(
              borderRadius: 20,
              height: 300,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(
                    8.0), // Adjust the padding value as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20 - 8), // Ensure the borderRadius matches with padding
                  child: Container(
                    height: 280,
                    width: 280,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/profile.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
