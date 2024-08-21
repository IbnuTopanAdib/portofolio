
import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/nav_text.dart';
import 'package:my_portofolio/constants/pallete.dart';
import 'package:my_portofolio/constants/size.dart';
import 'package:my_portofolio/widgets/header_desktop.dart';
import 'package:my_portofolio/widgets/header_mobile.dart';
import 'package:my_portofolio/widgets/main_dekstop.dart';
import 'package:my_portofolio/widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: (constraints.maxWidth >= dekstopWidth)
              ? null
              : Drawer(
                  backgroundColor: Palette.backgroundColor,
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.close)),
                        ),
                      ),
                      for (int i = 0; i < navTextList.length; i++)
                        ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            titleTextStyle: const TextStyle(
                                color: Palette.primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                            onTap: () {},
                            leading: Icon(navIconList[i]),
                            title: Text(
                              navTextList[i],
                            ))
                    ],
                  ),
                ),
          body: ListView(
            children: [
              //Navbar
              if (constraints.maxWidth >= dekstopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              // introduction
              if (constraints.maxWidth >= dekstopWidth)
                MainDekstop()
              else
                MainMobile(),

              /// Projects
              Container(
                height: 500,
                width: double.infinity,
                color: Palette.backgroundColor,
              ),

              /// Contact
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.greenAccent,
              ),
            ],
          ));
    });
  }
}
