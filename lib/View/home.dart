import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mr_portfolio/MyText.dart';
import 'package:mr_portfolio/View/about.dart';
import 'package:mr_portfolio/View/contact.dart';
import 'package:mr_portfolio/View/footer.dart';
import 'package:mr_portfolio/View/mySkills.dart';
import 'package:mr_portfolio/View/portfolio.dart';
import 'package:mr_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Controller/controller.dart';
import '../themeColor.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ScrollControllerX controller = Get.put(ScrollControllerX());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            "assets/Project_Image/bg_video.gif",
            fit: BoxFit.cover,
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent, // Ensures transparency
          appBar: ResponsiveAppBar(),
          drawer: MyDrawer(),
          body:Stack(
            children: [
              // Overlay
              Container(color: Colors.black.withOpacity(.6)),
              SingleChildScrollView(
                controller: controller.scrollController,
                child: Column(
                  children: [
                    //=====Home
                    Responsive(
                      mobile: Container(
                        key: controller.homeKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    14
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  /*crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,*/
                                  children: [
                                    MyText(
                                      text: "Hi. I'm",
                                      textColor: Colors.white,
                                      fontSize: 24,
                                    ),
                                    Gap(5),
                                    MyText(
                                      text: "HIRUFANULLAH",
                                      textColor: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                    Gap(5),
                                    MyText(
                                      text: "Flutter developer",
                                      textColor: primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                    Gap(10),
                                    Container(
                                      height: height*.45,
                                      width: width*45,
                                      decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.white),
                                      ),
                                      child: Image.asset(
                                          "assets/Project_Image/homeScreen.png"),
                                    ),
                                    Gap(10),
                                    SizedBox(
                                      // width: width*.7,
                                      child: MyText(
                                        text:
                                        "I am a passionate Flutter Developer with experience in building high-performance, visually appealing, and scalable mobile applications for Android, iOS, Windows and web. My expertise lies in Dart, Flutter, Firebase, and GetX, ensuring efficient state management and seamless user experiences.",
                                        textColor: Colors.white,
                                        textAlign: TextAlign.justify,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Gap(20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          highlightColor: Colors.transparent,
                                          splashColor: Colors.transparent,
                                          onTap: () {
                                            controller.scrollToSection(
                                                controller.contactKey,
                                                "Contact");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 26, vertical: 11.5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(8),
                                                color: primaryColor),
                                            child: MyText(
                                              text: "Let's Connect",
                                              textColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        // Gap(50),
                                        InkWell(
                                          highlightColor: Colors.transparent,
                                          splashColor: Colors.transparent,
                                          onTap: () => controller.downloadCV(),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 28, vertical: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: primaryColor,
                                                  width: 1.5),
                                            ),
                                            child: MyText(
                                              text: "Download CV",
                                              textColor: primaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      tablet: Container(
                        key: controller.homeKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width /
                                      (16 / 10) *
                                      0.12, // Adjust multiplier as needed
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          MyText(
                                            text: "Hi. I'm",
                                            textColor: Colors.white,
                                            fontSize: 18,
                                          ),
                                          Gap(5),
                                          MyText(
                                            text: "HIRUFANULLAH",
                                            textColor: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                          ),
                                          Gap(5),
                                          MyText(
                                            text: "Flutter developer",
                                            textColor: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28,
                                          ),
                                          Gap(10),
                                          SizedBox(
                                            width: width*.5,
                                            child: MyText(
                                              text:
                                              "I am a passionate Flutter Developer with experience in building high-performance, visually appealing, and scalable mobile applications for Android, iOS, Windows and web. My expertise lies in Dart, Flutter, Firebase, and GetX, ensuring efficient state management and seamless user experiences.",
                                              textColor: Colors.white,
                                              textAlign: TextAlign.justify,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Gap(20),
                                          Row(
                                            children: [
                                              InkWell(
                                                highlightColor: Colors.transparent,
                                                splashColor: Colors.transparent,
                                                onTap: () {
                                                  controller.scrollToSection(
                                                      controller.contactKey,
                                                      "Contact");
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 28, vertical: 11.5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(8),
                                                      color: primaryColor),
                                                  child: MyText(
                                                    text: "Let's Connect",
                                                    textColor: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Gap(50),
                                              InkWell(
                                                highlightColor: Colors.transparent,
                                                splashColor: Colors.transparent,
                                                onTap: () => controller.downloadCV(),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 28, vertical: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(8),
                                                    border: Border.all(
                                                        color: primaryColor,
                                                        width: 1.5),
                                                  ),
                                                  child: MyText(
                                                    text: "Download CV",
                                                    textColor: primaryColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: height*.38,
                                        width: width*.38,
                                        decoration: BoxDecoration(
                                          // border: Border.all(color: Colors.white),
                                        ),
                                        child: Image.asset(
                                            "assets/Project_Image/homeScreen.png"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      desktop: Container(
                        key: controller.homeKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width /
                                      (16 / 9) *
                                      0.16, // Adjust multiplier as needed
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          MyText(
                                            text: "Hi. I'm",
                                            textColor: Colors.white,
                                            fontSize: 24,
                                          ),
                                          Gap(5),
                                          MyText(
                                            text: "HIRUFANULLAH",
                                            textColor: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                          ),
                                          Gap(5),
                                          MyText(
                                            text: "Flutter developer",
                                            textColor: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 60,
                                          ),
                                          Gap(10),
                                          SizedBox(
                                            width: width*.47,
                                            child: MyText(
                                              text:
                                              "I am a passionate Flutter Developer with experience in building high-performance, visually appealing, and scalable mobile applications for Android, iOS, Windows and web. My expertise lies in Dart, Flutter, Firebase, and GetX, ensuring efficient state management and seamless user experiences.",
                                              textColor: Colors.white,
                                              textAlign: TextAlign.justify,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Gap(20),
                                          Row(
                                            children: [
                                              InkWell(
                                                highlightColor: Colors.transparent,
                                                splashColor: Colors.transparent,
                                                onTap: () {
                                                  controller.scrollToSection(
                                                      controller.contactKey,
                                                      "Contact");
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 28, vertical: 11.5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(8),
                                                      color: primaryColor),
                                                  child: MyText(
                                                    text: "Let's Connect",
                                                    textColor: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Gap(50),
                                              InkWell(
                                                highlightColor: Colors.transparent,
                                                splashColor: Colors.transparent,
                                                onTap: () => controller.downloadCV(),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 28, vertical: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(8),
                                                    border: Border.all(
                                                        color: primaryColor,
                                                        width: 1.5),
                                                  ),
                                                  child: MyText(
                                                    text: "Download CV",
                                                    textColor: primaryColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: height*.6,
                                        width: height*.6,
                                        decoration: BoxDecoration(
                                          // border: Border.all(color: Colors.white),
                                        ),
                                        child: Image.asset(
                                            "assets/Project_Image/homeScreen.png"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====About
                    About(),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====My_Skills
                    MySkills(),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====Portfolio
                    Portfolio(),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====Contact
                    Contact(),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====Footer
                    Footer(),
                  ],
                ),
              ),
              // Tap to Scroll Button
              Positioned(
                bottom: Responsive.isMobile(context) ? 40 : 100,
                right: Responsive.isMobile(context) ? 20 : 60,
                child: Obx(() {
                  return Visibility(
                    visible: controller.isButtonVisible.value,
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: controller.scrollToTop,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          size: 28,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ScrollControllerX controller = Get.put(ScrollControllerX());

  ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800; // Mobile breakpoint

        return AppBar(
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.black.withOpacity(.6),
          toolbarHeight: 80,
          leadingWidth: isMobile ? null : width*0.2,
          leading: isMobile
              ? IconButton(
            icon: Icon(Icons.menu, color: primaryColor),
            onPressed: () => Scaffold.of(context).openDrawer(),
          )
              : SizedBox(width: width*.2),
          title: isMobile
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(text: "Portfolio", fontWeight: FontWeight.bold, fontSize: 26, textColor: primaryColor),
                ],
              ) // Hide navigation items in AppBar for mobile
              : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _navItem(
                  "Home",
                      () => controller.scrollToSection(
                      controller.homeKey, "Home")),
              _navItem(
                  "About",
                      () => controller.scrollToSection(
                      controller.aboutUsKey, "About")),
              _navItem(
                  "My Skills",
                      () => controller.scrollToSection(
                      controller.whatIDoKey, "My Skills")),
              _navItem(
                  "Portfolio",
                      () => controller.scrollToSection(
                      controller.portfolioKey, "Portfolio")),
              _navItem(
                  "Contact",
                      () => controller.scrollToSection(
                      controller.contactKey, "Contact")),
            ],
          ),
          actions: isMobile ? [SizedBox(width: width*0.15)] : [SizedBox(height: 70, width: width*0.2)],
        );
      },
    );
  }

  Widget _navItem(String text, VoidCallback onTap) {
    return Obx(() {
      Color textColor = controller.selectedNavItem.value == text
          ? primaryColor
          : (controller.hoverNavItem.value == text
          ? primaryColor
          : Colors.white54);

      return InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        onHover: (isHovering) {
          controller.hoverNavItem.value = isHovering ? text : "";
        },
        child: MyText(
          text: text,
          fontSize: 20,
          textColor: textColor,
          fontWeight: controller.selectedNavItem.value == text
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class MyDrawer extends StatelessWidget {
  final ScrollControllerX controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: secondaryColor),
            child: Center(
              child: Text("Menu",
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ),
          _drawerItem("Home",
                  () => controller.scrollToSection(controller.homeKey, "Home")),
          _drawerItem("About",
                  () => controller.scrollToSection(controller.aboutUsKey, "About")),
          _drawerItem(
              "My Skills",
                  () => controller.scrollToSection(
                  controller.whatIDoKey, "My Skills")),
          _drawerItem(
              "Portfolio",
                  () => controller.scrollToSection(
                  controller.portfolioKey, "Portfolio")),
          _drawerItem(
              "Contact",
                  () =>
                  controller.scrollToSection(controller.contactKey, "Contact")),
        ],
      ),
    );
  }

  Widget _drawerItem(String text, VoidCallback onTap) {
    return ListTile(
      title: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      onTap: () {
        Navigator.pop(Get.context!); // Close drawer
        onTap();
      },
    );
  }
}