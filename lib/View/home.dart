import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mr_portfolio/MyText.dart';
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
                    Responsive(
                        mobile: Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: Container(
                            key: controller.aboutUsKey,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20), // Adjust top padding if needed
                                      child: MyText(
                                        text: "About",
                                        fontSize: 40,
                                        textColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
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
                                        child: Column(
                                          children: [
                                            Container(
                                              height: height*.5,
                                              width: width*.8,
                                              decoration: BoxDecoration(
                                                // border: Border.all(color: Colors.white),
                                              ),
                                              child: Image.asset(
                                                  "assets/Project_Image/home.png"),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  // width: 700,
                                                  child: MyText(
                                                    text:
                                                    "I am a passionate and detail-oriented Flutter Developer dedicated to crafting seamless, user-friendly mobile applications. With a deep understanding of UI/UX principles, I build apps that are not only visually appealing but also highly functional and accessible.",
                                                    textColor: Colors.white,
                                                    textAlign: TextAlign.justify,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Gap(20),
                                                SizedBox(
                                                  // width: 700,
                                                  child: MyText(
                                                    text:
                                                    "My expertise lies in Dart programming, state management, API integration, and performance optimization—all of which help me create smooth and engaging mobile experiences. I believe that great development goes beyond writing code; it should solve real problems, improve usability, and provide meaningful interactions.",
                                                    textColor: Colors.white,
                                                    textAlign: TextAlign.justify,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Gap(20),
                                                SizedBox(
                                                  // width: 700,
                                                  child: MyText(
                                                    text:
                                                    "Throughout my career, I have worked on diverse projects, developing intuitive mobile applications that align with both business goals and user needs. My process is rooted in clean architecture and best coding practices, ensuring that every app is scalable, efficient, and user-centric.",
                                                    textColor: Colors.white,
                                                    textAlign: TextAlign.justify,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
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
                        ),
                        tablet: Container(
                          key: controller.aboutUsKey,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20), // Adjust top padding if needed
                                  child: MyText(
                                    text: "About",
                                    fontSize: 50,
                                    textColor: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          (14 / 10) *
                                          0.15, // Adjust multiplier as needed
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              // height: height*.4,
                                              width: width*.4,
                                              decoration: BoxDecoration(
                                                // border: Border.all(color: Colors.white),
                                              ),
                                              child: Image.asset(
                                                  "assets/Project_Image/home.png"),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: width*.5,
                                                  child: MyText(
                                                    text:
                                                    "I am a passionate and detail-oriented Flutter Developer dedicated to crafting seamless, user-friendly mobile applications. With a deep understanding of UI/UX principles, I build apps that are not only visually appealing but also highly functional and accessible.",
                                                    textColor: Colors.white,
                                                    textAlign: TextAlign.justify,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Gap(20),
                                                SizedBox(
                                                  width: width*.5,
                                                  child: MyText(
                                                    text:
                                                    "My expertise lies in Dart programming, state management, API integration, and performance optimization—all of which help me create smooth and engaging mobile experiences. I believe that great development goes beyond writing code; it should solve real problems, improve usability, and provide meaningful interactions.",
                                                    textColor: Colors.white,
                                                    textAlign: TextAlign.justify,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Gap(20),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 14.0),
                                          child: SizedBox(
                                            // width: width*.5,
                                            child: MyText(
                                              text:
                                              "Throughout my career, I have worked on diverse projects, developing intuitive mobile applications that align with both business goals and user needs. My process is rooted in clean architecture and best coding practices, ensuring that every app is scalable, efficient, and user-centric.",
                                              textColor: Colors.white,
                                              textAlign: TextAlign.justify,
                                              fontSize: 18,
                                            ),
                                          ),
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
                          key: controller.aboutUsKey,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20), // Adjust top padding if needed
                                  child: MyText(
                                    text: "About",
                                    fontSize: 50,
                                    textColor: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width /
                                        (16 / 9) *
                                        0.16, // Adjust multiplier as needed
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 400,
                                        width: 400,
                                        decoration: BoxDecoration(
                                          // border: Border.all(color: Colors.white),
                                        ),
                                        child: Image.asset(
                                            "assets/Project_Image/home.png"),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 700,
                                            child: MyText(
                                              text:
                                              "I am a passionate and detail-oriented Flutter Developer dedicated to crafting seamless, user-friendly mobile applications. With a deep understanding of UI/UX principles, I build apps that are not only visually appealing but also highly functional and accessible.",
                                              textColor: Colors.white,
                                              textAlign: TextAlign.justify,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Gap(20),
                                          SizedBox(
                                            width: 700,
                                            child: MyText(
                                              text:
                                              "My expertise lies in Dart programming, state management, API integration, and performance optimization—all of which help me create smooth and engaging mobile experiences. I believe that great development goes beyond writing code; it should solve real problems, improve usability, and provide meaningful interactions.",
                                              textColor: Colors.white,
                                              textAlign: TextAlign.justify,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Gap(20),
                                          SizedBox(
                                            width: 700,
                                            child: MyText(
                                              text:
                                              "Throughout my career, I have worked on diverse projects, developing intuitive mobile applications that align with both business goals and user needs. My process is rooted in clean architecture and best coding practices, ensuring that every app is scalable, efficient, and user-centric.",
                                              textColor: Colors.white,
                                              textAlign: TextAlign.justify,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====My_Skills
                    Responsive(
                      mobile: Container(
                        // color: Colors.red,
                        key: controller.whatIDoKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: MyText(
                                  text: "My Skills",
                                  fontSize: 40,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Container(
                                // color: Colors.green,
                                height: height  * 2.9,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1, // Number of columns
                                    // crossAxisSpacing: 50,
                                    mainAxisSpacing: 50,
                                    /*childAspectRatio:
                                    .95,*/ // Match Container aspect ratio
                                  ),
                                  itemCount: 6,
                                  // Number of containers
                                  itemBuilder: (context, index) {
                                    return GetBuilder<ScrollControllerX>(
                                        builder: (controller) {
                                          return LayoutBuilder(
                                              builder: (context, constraints) {
                                                double textHeightPerLine =
                                                20; // Approximate height per line
                                                int maxLines =
                                                20; // Adjust dynamically based on content
                                                double estimatedHeight = (textHeightPerLine *
                                                    maxLines) +
                                                    250; // Base container height + text height
                                                double childAspectRatio =
                                                    constraints.maxWidth /
                                                        estimatedHeight;

                                                return MouseRegion(
                                                  /*onEnter: (_) {
                                                        controller.zoomIn(index);
                                                        // controller.toggleAnimation(index, forward: true);
                                                      },
                                                      onExit: (_) {
                                                        controller.zoomOut(index);
                                                        controller.toggleAnimation(index,
                                                            forward: false);
                                                      },*/
                                                  /*onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false),*/
                                                    child: AnimatedBuilder(
                                                      animation: controller
                                                          .zoomAnimations[index],
                                                      builder: (context, child) {
                                                        return Transform.scale(
                                                          scale: controller
                                                              .zoomAnimations[index]
                                                              .value,
                                                          child: AnimatedBuilder(
                                                              animation: controller
                                                                  .animations[index],
                                                              builder: (context, child) {
                                                                return InkWell(
                                                                  highlightColor:
                                                                  Colors.transparent,
                                                                  splashColor:
                                                                  Colors.transparent,
                                                                  onTap: () => controller
                                                                      .toggleAnimation1(
                                                                    index,
                                                                  ),
                                                                  child: Transform(
                                                                      alignment:
                                                                      FractionalOffset
                                                                          .center,
                                                                      transform: Matrix4
                                                                          .identity()
                                                                        ..setEntry(
                                                                            3, 2, 0.0015)
                                                                        ..rotateY(pi *
                                                                            controller
                                                                                .animations[
                                                                            index]
                                                                                .value),
                                                                      child: controller
                                                                          .animations[
                                                                      index]
                                                                          .value <=
                                                                          0.5
                                                                          ? _buildSkillFrontSide(
                                                                          maxLines,
                                                                          index,
                                                                          controller, context)
                                                                          : _buildSkillBackSide(
                                                                          index,
                                                                          controller)),
                                                                );
                                                              }),
                                                        );
                                                      },
                                                    ));
                                              });
                                        });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      tablet: Container(
                        // color: Colors.red,
                        key: controller.whatIDoKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: MyText(
                                  text: "My Skills",
                                  fontSize: 50,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 80.0),
                                child: Container(
                                  // color: Colors.green,
                                  height: height * 1.86,
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(horizontal: 60),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, // Number of columns
                                      crossAxisSpacing: 40,
                                      mainAxisSpacing: 40,
                                      childAspectRatio:
                                      .85, // Match Container aspect ratio
                                    ),
                                    itemCount: 6,
                                    // Number of containers
                                    itemBuilder: (context, index) {
                                      return GetBuilder<ScrollControllerX>(
                                          builder: (controller) {
                                            return LayoutBuilder(
                                                builder: (context, constraints) {
                                                  double textHeightPerLine =
                                                  20; // Approximate height per line
                                                  int maxLines =
                                                  9; // Adjust dynamically based on content
                                                  double estimatedHeight = (textHeightPerLine *
                                                      maxLines) +
                                                      250; // Base container height + text height
                                                  double childAspectRatio =
                                                      constraints.maxWidth /
                                                          estimatedHeight;

                                                  return MouseRegion(
                                                      /*onEnter: (_) {
                                                        controller.zoomIn(index);
                                                        // controller.toggleAnimation(index, forward: true);
                                                      },
                                                      onExit: (_) {
                                                        controller.zoomOut(index);
                                                        controller.toggleAnimation(index,
                                                            forward: false);
                                                      },*/
                                                      /*onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false),*/
                                                      child: AnimatedBuilder(
                                                        animation: controller
                                                            .zoomAnimations[index],
                                                        builder: (context, child) {
                                                          return Transform.scale(
                                                            scale: controller
                                                                .zoomAnimations[index]
                                                                .value,
                                                            child: AnimatedBuilder(
                                                                animation: controller
                                                                    .animations[index],
                                                                builder: (context, child) {
                                                                  return InkWell(
                                                                    highlightColor:
                                                                    Colors.transparent,
                                                                    splashColor:
                                                                    Colors.transparent,
                                                                    onTap: () => controller
                                                                        .toggleAnimation1(
                                                                      index,
                                                                    ),
                                                                    child: Transform(
                                                                        alignment:
                                                                        FractionalOffset
                                                                            .center,
                                                                        transform: Matrix4
                                                                            .identity()
                                                                          ..setEntry(
                                                                              3, 2, 0.0015)
                                                                          ..rotateY(pi *
                                                                              controller
                                                                                  .animations[
                                                                              index]
                                                                                  .value),
                                                                        child: controller
                                                                            .animations[
                                                                        index]
                                                                            .value <=
                                                                            0.5
                                                                            ? _buildSkillFrontSide(
                                                                            maxLines,
                                                                            index,
                                                                            controller, context)
                                                                            : _buildSkillBackSide(
                                                                            index,
                                                                            controller)),
                                                                  );
                                                                }),
                                                          );
                                                        },
                                                      ));
                                                });
                                          });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      desktop: Container(
                        // color: Colors.red,
                        key: controller.whatIDoKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: MyText(
                                  text: "My Skills",
                                  fontSize: 50,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 80.0),
                                child: Container(
                                  // color: Colors.green,
                                  height: height / (16 / 9) * 2.56,
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(horizontal: 200),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3, // Number of columns
                                      crossAxisSpacing: 50,
                                      mainAxisSpacing: 80,
                                      childAspectRatio:
                                      .8, // Match Container aspect ratio
                                    ),
                                    itemCount: 6,
                                    // Number of containers
                                    itemBuilder: (context, index) {
                                      return GetBuilder<ScrollControllerX>(
                                          builder: (controller) {
                                            return LayoutBuilder(
                                                builder: (context, constraints) {
                                                  double textHeightPerLine =
                                                  20; // Approximate height per line
                                                  int maxLines =
                                                  7; // Adjust dynamically based on content
                                                  double estimatedHeight = (textHeightPerLine *
                                                      maxLines) +
                                                      250; // Base container height + text height
                                                  double childAspectRatio =
                                                      constraints.maxWidth /
                                                          estimatedHeight;

                                                  return MouseRegion(
                                                      onEnter: (_) {
                                                        controller.zoomIn(index);
                                                        // controller.toggleAnimation(index, forward: true);
                                                      },
                                                      onExit: (_) {
                                                        controller.zoomOut(index);
                                                        controller.toggleAnimation(index,
                                                            forward: false);
                                                      },
                                                      /*onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false),*/
                                                      child: AnimatedBuilder(
                                                        animation: controller
                                                            .zoomAnimations[index],
                                                        builder: (context, child) {
                                                          return Transform.scale(
                                                            scale: controller
                                                                .zoomAnimations[index]
                                                                .value,
                                                            child: AnimatedBuilder(
                                                                animation: controller
                                                                    .animations[index],
                                                                builder: (context, child) {
                                                                  return InkWell(
                                                                    highlightColor:
                                                                    Colors.transparent,
                                                                    splashColor:
                                                                    Colors.transparent,
                                                                    onTap: () => controller
                                                                        .toggleAnimation1(
                                                                      index,
                                                                    ),
                                                                    child: Transform(
                                                                        alignment:
                                                                        FractionalOffset
                                                                            .center,
                                                                        transform: Matrix4
                                                                            .identity()
                                                                          ..setEntry(
                                                                              3, 2, 0.0015)
                                                                          ..rotateY(pi *
                                                                              controller
                                                                                  .animations[
                                                                              index]
                                                                                  .value),
                                                                        child: controller
                                                                            .animations[
                                                                        index]
                                                                            .value <=
                                                                            0.5
                                                                            ? _buildSkillFrontSide(
                                                                            maxLines,
                                                                            index,
                                                                            controller,context)
                                                                            : _buildSkillBackSide(
                                                                            index,
                                                                            controller)),
                                                                  );
                                                                }),
                                                          );
                                                        },
                                                      ));
                                                });
                                          });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====Portfolio
                    Responsive(
                      mobile: Container(
                        // color: Colors.red,
                        key: controller.portfolioKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: MyText(
                                  text: "Portfolio",
                                  fontSize: 40,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 80.0),
                                child: SizedBox(
                                  // color: Colors.green,
                                  height: height * 2.1,
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      crossAxisSpacing: 40,
                                      mainAxisSpacing: 40,
                                      childAspectRatio: 1.4,
                                    ),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return GetBuilder<ScrollControllerX>(
                                        builder: (controller) {
                                          return MouseRegion(
                                              /*onEnter: (_) {
                                                controller.zoomIn(index);
                                                // controller.toggleAnimation(index, forward: true);
                                              },
                                              onExit: (_) {
                                                controller.zoomOut(index);
                                                controller.toggleAnimation(index,
                                                    forward: false);
                                              },*/

                                              /*onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false),*/
                                              child: AnimatedBuilder(
                                                  animation: controller
                                                      .zoomAnimations[index],
                                                  builder: (context, child) {
                                                    return Transform.scale(
                                                      scale: controller
                                                          .zoomAnimations[index]
                                                          .value,
                                                      child: AnimatedBuilder(
                                                        animation: controller
                                                            .animations[index],
                                                        builder: (context, child) {
                                                          return InkWell(
                                                            highlightColor:
                                                            Colors.transparent,
                                                            splashColor:
                                                            Colors.transparent,
                                                            onTap: () => controller
                                                                .toggleAnimation1(
                                                              index,
                                                            ),
                                                            child: Transform(
                                                              alignment:
                                                              FractionalOffset
                                                                  .center,
                                                              transform: Matrix4
                                                                  .identity()
                                                                ..setEntry(
                                                                    3, 2, 0.0015)
                                                                ..rotateY(pi *
                                                                    controller
                                                                        .animations[
                                                                    index]
                                                                        .value),
                                                              child: controller
                                                                  .animations[
                                                              index]
                                                                  .value <=
                                                                  0.5
                                                                  ? _buildPortfolioFrontSide(
                                                                  index,
                                                                  controller, context)
                                                                  : _buildPortfolioBackSide(
                                                                  index,
                                                                  controller),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  }));
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      tablet: Container(
                        // color: Colors.red,
                        key: controller.portfolioKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: MyText(
                                  text: "Portfolio",
                                  fontSize: 50,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Container(
                                  // color: Colors.green,
                                  height: height / (14 / 18.2) * .6,
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(horizontal: 40),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 40,
                                      mainAxisSpacing: 40,
                                      childAspectRatio: 1.4,
                                    ),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return GetBuilder<ScrollControllerX>(
                                        builder: (controller) {
                                          return MouseRegion(
                                              /*onEnter: (_) {
                                                controller.zoomIn(index);
                                                // controller.toggleAnimation(index, forward: true);
                                              },
                                              onExit: (_) {
                                                controller.zoomOut(index);
                                                controller.toggleAnimation(index,
                                                    forward: false);
                                              },*/

                                              /*onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false),*/
                                              child: AnimatedBuilder(
                                                  animation: controller
                                                      .zoomAnimations[index],
                                                  builder: (context, child) {
                                                    return Transform.scale(
                                                      scale: controller
                                                          .zoomAnimations[index]
                                                          .value,
                                                      child: AnimatedBuilder(
                                                        animation: controller
                                                            .animations[index],
                                                        builder: (context, child) {
                                                          return InkWell(
                                                            highlightColor:
                                                            Colors.transparent,
                                                            splashColor:
                                                            Colors.transparent,
                                                            onTap: () => controller
                                                                .toggleAnimation1(
                                                              index,
                                                            ),
                                                            child: Transform(
                                                              alignment:
                                                              FractionalOffset
                                                                  .center,
                                                              transform: Matrix4
                                                                  .identity()
                                                                ..setEntry(
                                                                    3, 2, 0.0015)
                                                                ..rotateY(pi *
                                                                    controller
                                                                        .animations[
                                                                    index]
                                                                        .value),
                                                              child: controller
                                                                  .animations[
                                                              index]
                                                                  .value <=
                                                                  0.5
                                                                  ? _buildPortfolioFrontSide(
                                                                  index,
                                                                  controller, context)
                                                                  : _buildPortfolioBackSide(
                                                                  index,
                                                                  controller),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  }));
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      desktop: Container(
                        // color: Colors.red,
                        key: controller.portfolioKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: MyText(
                                  text: "Portfolio",
                                  fontSize: 50,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 80.0),
                                child: Container(
                                  // color: Colors.green,
                                  height: height / (16 / 9) * 3.4,
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(horizontal: 180),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 50,
                                      mainAxisSpacing: 80,
                                      childAspectRatio: 1.4,
                                    ),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return GetBuilder<ScrollControllerX>(
                                        builder: (controller) {
                                          return MouseRegion(
                                              onEnter: (_) {
                                                controller.zoomIn(index);
                                                // controller.toggleAnimation(index, forward: true);
                                              },
                                              onExit: (_) {
                                                controller.zoomOut(index);
                                                controller.toggleAnimation(index,
                                                    forward: false);
                                              },

                                              /*onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false),*/
                                              child: AnimatedBuilder(
                                                  animation: controller
                                                      .zoomAnimations[index],
                                                  builder: (context, child) {
                                                    return Transform.scale(
                                                      scale: controller
                                                          .zoomAnimations[index]
                                                          .value,
                                                      child: AnimatedBuilder(
                                                        animation: controller
                                                            .animations[index],
                                                        builder: (context, child) {
                                                          return InkWell(
                                                            highlightColor:
                                                            Colors.transparent,
                                                            splashColor:
                                                            Colors.transparent,
                                                            onTap: () => controller
                                                                .toggleAnimation1(
                                                              index,
                                                            ),
                                                            child: Transform(
                                                              alignment:
                                                              FractionalOffset
                                                                  .center,
                                                              transform: Matrix4
                                                                  .identity()
                                                                ..setEntry(
                                                                    3, 2, 0.0015)
                                                                ..rotateY(pi *
                                                                    controller
                                                                        .animations[
                                                                    index]
                                                                        .value),
                                                              child: controller
                                                                  .animations[
                                                              index]
                                                                  .value <=
                                                                  0.5
                                                                  ? _buildPortfolioFrontSide(
                                                                  index,
                                                                  controller, context)
                                                                  : _buildPortfolioBackSide(
                                                                  index,
                                                                  controller),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  }));
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(Responsive.isMobile(context)?30:100),
                    //=====Contact
                    Responsive(
                      mobile: Container(
                        key: controller.contactKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: MyText(
                                text: "Contact",
                                fontSize: 40,
                                textColor: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Image.asset("assets/Project_Image/contact.png", height: height*.4,),
                                  Gap(30),
                                  MyText(
                                    text: "LET'S WORK TOGETHER",
                                    fontSize: 60,
                                    textColor: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    textAlign: TextAlign.center,
                                  ),
                                  Gap(30),
                                  // Gmail Container
                                  InkWell(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      final Uri emailUri = Uri(
                                        scheme: 'mailto',
                                        path: 'hirfan0307@gmail.com',
                                        query:
                                        'subject=Hello&body=Hi, I would like to contact you.', // Optional
                                      );
                                      if (await canLaunchUrl(emailUri)) {
                                        await launchUrl(emailUri);
                                      } else {
                                        print("Could not launch email app");
                                      }
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 330,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(18),
                                        color:
                                        secondaryColor.withOpacity(.9),
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: .8,
                                            blurRadius: 5,
                                            offset: Offset(-5, 5),
                                            color: Colors.black12,
                                          ),
                                          BoxShadow(
                                            spreadRadius: .8,
                                            blurRadius: 5,
                                            offset: Offset(.5, -.5),
                                            color: Colors.white24,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.mail_outline,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          Gap(20),
                                          MyText(
                                            text: "hirfan0307@gmail.com",
                                            fontSize: 20,
                                            textColor: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Gap(30),

                                  // WhatsApp Container
                                  InkWell(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      String phoneNumber = "9360673455";
                                      final Uri whatsappUri = Uri.parse(
                                          "https://wa.me/$phoneNumber"); // Opens WhatsApp chat
                                      if (await canLaunchUrl(whatsappUri)) {
                                        await launchUrl(whatsappUri,
                                            mode: LaunchMode
                                                .externalApplication);
                                      } else {
                                        print("Could not launch WhatsApp");
                                      }
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 230,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(18),
                                        color:
                                        secondaryColor.withOpacity(.9),
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: .8,
                                            blurRadius: 5,
                                            offset: Offset(-5, 5),
                                            color: Colors.black12,
                                          ),
                                          BoxShadow(
                                            spreadRadius: .8,
                                            blurRadius: 5,
                                            offset: Offset(.5, -.5),
                                            color: Colors.white24,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/img/whatsapp.png",
                                            width: 25,
                                          ),
                                          Gap(20),
                                          MyText(
                                            text: "9360673455",
                                            fontSize: 20,
                                            textColor: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Gap(50),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      tablet: Container(
                        key: controller.contactKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: MyText(
                                text: "Contact",
                                fontSize: 50,
                                textColor: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Align(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width /
                                      (16 / 9) *
                                      0.1, // Adjust multiplier as needed
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/Project_Image/contact.png", height: height*.4,),
                                      Gap(30),
                                      MyText(
                                        text: "LET'S WORK TOGETHER",
                                        fontSize: 70,
                                        textColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        textAlign: TextAlign.center,
                                      ),
                                      Gap(50),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // Gmail Container
                                          InkWell(
                                            highlightColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            onTap: () async {
                                              final Uri emailUri = Uri(
                                                scheme: 'mailto',
                                                path: 'hirfan0307@gmail.com',
                                                query:
                                                'subject=Hello&body=Hi, I would like to contact you.', // Optional
                                              );
                                              if (await canLaunchUrl(emailUri)) {
                                                await launchUrl(emailUri);
                                              } else {
                                                print("Could not launch email app");
                                              }
                                            },
                                            child: Container(
                                              height: 45,
                                              width: 330,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(18),
                                                color:
                                                secondaryColor.withOpacity(.9),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(-5, 5),
                                                    color: Colors.black12,
                                                  ),
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(.5, -.5),
                                                    color: Colors.white24,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.mail_outline,
                                                    color: Colors.white,
                                                    size: 25,
                                                  ),
                                                  Gap(20),
                                                  MyText(
                                                    text: "hirfan0307@gmail.com",
                                                    fontSize: 20,
                                                    textColor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          Gap(50),

                                          // WhatsApp Container
                                          InkWell(
                                            highlightColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            onTap: () async {
                                              String phoneNumber = "9360673455";
                                              final Uri whatsappUri = Uri.parse(
                                                  "https://wa.me/$phoneNumber"); // Opens WhatsApp chat
                                              if (await canLaunchUrl(whatsappUri)) {
                                                await launchUrl(whatsappUri,
                                                    mode: LaunchMode
                                                        .externalApplication);
                                              } else {
                                                print("Could not launch WhatsApp");
                                              }
                                            },
                                            child: Container(
                                              height: 45,
                                              width: 230,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(18),
                                                color:
                                                secondaryColor.withOpacity(.9),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(-5, 5),
                                                    color: Colors.black12,
                                                  ),
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(.5, -.5),
                                                    color: Colors.white24,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/img/whatsapp.png",
                                                    width: 25,
                                                  ),
                                                  Gap(20),
                                                  MyText(
                                                    text: "9360673455",
                                                    fontSize: 20,
                                                    textColor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
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
                        key: controller.contactKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: MyText(
                                text: "Contact",
                                fontSize: 50,
                                textColor: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Align(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width /
                                      (16 / 9) *
                                      0.1, // Adjust multiplier as needed
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/Project_Image/contact.png", height: height*.6,),
                                      Gap(30),
                                      MyText(
                                        text: "LET'S WORK TOGETHER",
                                        fontSize: 130,
                                        textColor: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        textAlign: TextAlign.center,
                                      ),
                                      Gap(50),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // Gmail Container
                                          InkWell(
                                            highlightColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            onTap: () async {
                                              final Uri emailUri = Uri(
                                                scheme: 'mailto',
                                                path: 'hirfan0307@gmail.com',
                                                query:
                                                'subject=Hello&body=Hi, I would like to contact you.', // Optional
                                              );
                                              if (await canLaunchUrl(emailUri)) {
                                                await launchUrl(emailUri);
                                              } else {
                                                print("Could not launch email app");
                                              }
                                            },
                                            child: Container(
                                              height: 45,
                                              width: 330,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(18),
                                                color:
                                                secondaryColor.withOpacity(.9),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(-5, 5),
                                                    color: Colors.black12,
                                                  ),
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(.5, -.5),
                                                    color: Colors.white24,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.mail_outline,
                                                    color: Colors.white,
                                                    size: 25,
                                                  ),
                                                  Gap(20),
                                                  MyText(
                                                    text: "hirfan0307@gmail.com",
                                                    fontSize: 20,
                                                    textColor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          Gap(50),

                                          // WhatsApp Container
                                          InkWell(
                                            highlightColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            onTap: () async {
                                              String phoneNumber = "9360673455";
                                              final Uri whatsappUri = Uri.parse(
                                                  "https://wa.me/$phoneNumber"); // Opens WhatsApp chat
                                              if (await canLaunchUrl(whatsappUri)) {
                                                await launchUrl(whatsappUri,
                                                    mode: LaunchMode
                                                        .externalApplication);
                                              } else {
                                                print("Could not launch WhatsApp");
                                              }
                                            },
                                            child: Container(
                                              height: 45,
                                              width: 230,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(18),
                                                color:
                                                secondaryColor.withOpacity(.9),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(-5, 5),
                                                    color: Colors.black12,
                                                  ),
                                                  BoxShadow(
                                                    spreadRadius: .8,
                                                    blurRadius: 5,
                                                    offset: Offset(.5, -.5),
                                                    color: Colors.white24,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/img/whatsapp.png",
                                                    width: 25,
                                                  ),
                                                  Gap(20),
                                                  MyText(
                                                    text: "9360673455",
                                                    fontSize: 20,
                                                    textColor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
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
                    //=====Footer
                    Responsive(
                      mobile: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                        color: secondaryColor.withOpacity(.9),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: .8,
                            blurRadius: 5,
                            offset: Offset(-5, 5),
                            color: Colors.black12,
                          ),
                          BoxShadow(
                            spreadRadius: .8,
                            blurRadius: 5,
                            offset: Offset(.5, -.5),
                            color: Colors.white24,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Social Media Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialIcon(FontAwesomeIcons.linkedin, () {
                                controller.launchURL("https://linkedin.com/");
                              }, "LinkedIn"),
                              _socialIcon(FontAwesomeIcons.github, () {
                                controller.launchURL("https://github.com/");
                              }, "GitHub"),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Copyright Text
                          Text(
                            "© 2025 Hirufanullah. All Rights Reserved.",
                            style: TextStyle(color: Colors.white60, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                      tablet: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                        color: secondaryColor.withOpacity(.9),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: .8,
                            blurRadius: 5,
                            offset: Offset(-5, 5),
                            color: Colors.black12,
                          ),
                          BoxShadow(
                            spreadRadius: .8,
                            blurRadius: 5,
                            offset: Offset(.5, -.5),
                            color: Colors.white24,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Navigation Links
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 30,
                            children: [
                              _footerNavItem(
                                  "Home",
                                      () => controller.scrollToSection(
                                      controller.homeKey, "Home")),
                              _footerNavItem(
                                  "About",
                                      () => controller.scrollToSection(
                                      controller.aboutUsKey, "About")),
                              _footerNavItem(
                                  "My Skills",
                                      () => controller.scrollToSection(
                                      controller.whatIDoKey, "My Skills")),
                              _footerNavItem(
                                  "Portfolio",
                                      () => controller.scrollToSection(
                                      controller.portfolioKey, "Portfolio")),
                              _footerNavItem(
                                  "Contact",
                                      () => controller.scrollToSection(
                                      controller.contactKey, "Contact")),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Social Media Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialIcon(FontAwesomeIcons.linkedin, () {
                                controller.launchURL("https://linkedin.com/");
                              }, "LinkedIn"),
                              _socialIcon(FontAwesomeIcons.github, () {
                                controller.launchURL("https://github.com/");
                              }, "GitHub"),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Copyright Text
                          Text(
                            "© 2025 Hirufanullah. All Rights Reserved.",
                            style: TextStyle(color: Colors.white60, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                      desktop: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                        color: secondaryColor.withOpacity(.9),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: .8,
                            blurRadius: 5,
                            offset: Offset(-5, 5),
                            color: Colors.black12,
                          ),
                          BoxShadow(
                            spreadRadius: .8,
                            blurRadius: 5,
                            offset: Offset(.5, -.5),
                            color: Colors.white24,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Navigation Links
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 30,
                            children: [
                              _footerNavItem(
                                  "Home",
                                      () => controller.scrollToSection(
                                      controller.homeKey, "Home")),
                              _footerNavItem(
                                  "About",
                                      () => controller.scrollToSection(
                                      controller.aboutUsKey, "About")),
                              _footerNavItem(
                                  "My Skills",
                                      () => controller.scrollToSection(
                                      controller.whatIDoKey, "My Skills")),
                              _footerNavItem(
                                  "Portfolio",
                                      () => controller.scrollToSection(
                                      controller.portfolioKey, "Portfolio")),
                              _footerNavItem(
                                  "Contact",
                                      () => controller.scrollToSection(
                                      controller.contactKey, "Contact")),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Social Media Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialIcon(FontAwesomeIcons.linkedin, () {
                                controller.launchURL("https://linkedin.com/");
                              }, "LinkedIn"),
                              _socialIcon(FontAwesomeIcons.github, () {
                                controller.launchURL("https://github.com/");
                              }, "GitHub"),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Copyright Text
                          Text(
                            "© 2025 Hirufanullah. All Rights Reserved.",
                            style: TextStyle(color: Colors.white60, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    ),
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

Widget _buildSkillFrontSide(int maxLine, int index, ScrollControllerX controller, BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Responsive(
    mobile: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: secondaryColor.withOpacity(.7),
      boxShadow: [
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(-5, 5),
            color: Colors.black12),
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(.5, -.5),
            color: Colors.white24),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height*.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // color: secondaryColor.withOpacity(.9),
                image: DecorationImage(
                    image: AssetImage(controller.skillsList[index].image))),
          ),
          Gap(10),
          MyText(
            text: controller.skillsList[index].heading.toString(),
            textColor: primaryColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,

          ),
          Gap(20),
          Expanded(
            child: MyText(
              text: controller.skillsList[index].paragraph.toString(),
              textColor: Colors.white,
              fontSize: 18,
              maxLines: maxLine,
              // textAlign: TextAlign.center,
              // overFlow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  ),
    tablet: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: secondaryColor.withOpacity(.7),
      boxShadow: [
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(-5, 5),
            color: Colors.black12),
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(.5, -.5),
            color: Colors.white24),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // color: secondaryColor.withOpacity(.9),
                image: DecorationImage(
                    image: AssetImage(controller.skillsList[index].image))),
          ),
          // Gap(10),
          MyText(
            text: controller.skillsList[index].heading.toString(),
            textColor: primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          Gap(20),
          Expanded(
            child: MyText(
              text: controller.skillsList[index].paragraph.toString(),
              textColor: Colors.white,
              textAlign: TextAlign.center,
              fontSize: 18,
              maxLines: maxLine,
              // overFlow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  ),
    desktop: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: secondaryColor.withOpacity(.7),
      boxShadow: [
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(-5, 5),
            color: Colors.black12),
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(.5, -.5),
            color: Colors.white24),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // color: secondaryColor.withOpacity(.9),
                image: DecorationImage(
                    image: AssetImage(controller.skillsList[index].image))),
          ),
          Gap(10),
          MyText(
            text: controller.skillsList[index].heading.toString(),
            textColor: primaryColor,
            fontSize: Responsive.isMobile(context) ? 32 : 25,
            fontWeight: FontWeight.bold,
          ),
          Gap(20),
          Expanded(
            child: MyText(
              text: controller.skillsList[index].paragraph.toString(),
              textColor: Colors.white,
              fontSize: Responsive.isMobile(context) ? 20 :18,
              maxLines: maxLine,
              // overFlow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  ),
  );
}

Widget _buildSkillBackSide(int index, ScrollControllerX controller) {
  return Responsive(
    mobile: Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..rotateY(pi),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: secondaryColor.withOpacity(.7),
        boxShadow: [
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(-5, 5),
              color: Colors.black12),
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(.5, -.5),
              color: Colors.white24),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: controller.skillsList[index].heading,
                textColor: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              Gap(10),
              MyText(
                text: controller.skillsList[index].paragraph.toString(),
                textColor: Colors.white,
                fontSize: 18,
                // maxLines: 5,
                // overFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    ),
  ),
    tablet: Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..rotateY(pi),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: secondaryColor.withOpacity(.7),
        boxShadow: [
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(-5, 5),
              color: Colors.black12),
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(.5, -.5),
              color: Colors.white24),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "${controller.skillsList[index].heading}",
                textColor: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              Gap(10),
              MyText(
                text: controller.skillsList[index].paragraph.toString(),
                textColor: Colors.white,
                fontSize: 17,
                // maxLines: 5,
                // overFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    ),
  ),
    desktop: Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..rotateY(pi),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: secondaryColor.withOpacity(.7),
        boxShadow: [
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(-5, 5),
              color: Colors.black12),
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(.5, -.5),
              color: Colors.white24),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "${controller.skillsList[index].heading}",
                textColor: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              Gap(10),
              MyText(
                text: controller.skillsList[index].paragraph.toString(),
                textColor: Colors.white,
                fontSize: 17,
                // maxLines: 5,
                // overFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  );
}

Widget _buildPortfolioFrontSide(int index, ScrollControllerX controller, BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Responsive(
    mobile: Container(
    // height: height*.6,
    // width: width*.2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: secondaryColor.withOpacity(.7),
      boxShadow: [
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(-5, 5),
            color: Colors.black12),
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(.5, -.5),
            color: Colors.white24),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(top: Responsive.isMobile(context)?14: 30.0, left: Responsive.isMobile(context)?14: 30, right: Responsive.isMobile(context)?14: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: controller.portfolioList[index].heading.toString(),
            textColor: primaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          Gap(20),
          Flexible(
            child: Container(
              height: height*5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: secondaryColor.withOpacity(.9),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: .8,
                      blurRadius: 5,
                      offset: Offset(-5, 5),
                      color: Colors.black12),
                  BoxShadow(
                      spreadRadius: .8,
                      blurRadius: 5,
                      offset: Offset(.5, -.5),
                      color: Colors.white24),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    controller.portfolioList[index].image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  ),
    tablet: Container(
    /*height: 370,
    width: 280,*/
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: secondaryColor.withOpacity(.7),
      boxShadow: [
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(-5, 5),
            color: Colors.black12),
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(.5, -.5),
            color: Colors.white24),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 14.0, left: 17, right: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: controller.portfolioList[index].heading.toString(),
            textColor: primaryColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          Gap(20),
          Flexible(
            child: Container(
              // height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: secondaryColor.withOpacity(.9),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: .8,
                      blurRadius: 5,
                      offset: Offset(-5, 5),
                      color: Colors.black12),
                  BoxShadow(
                      spreadRadius: .8,
                      blurRadius: 5,
                      offset: Offset(.5, -.5),
                      color: Colors.white24),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    controller.portfolioList[index].image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  ),
    desktop: Container(
    height: 370,
    width: 280,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: secondaryColor.withOpacity(.7),
      boxShadow: [
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(-5, 5),
            color: Colors.black12),
        BoxShadow(
            spreadRadius: .8,
            blurRadius: 5,
            offset: Offset(.5, -.5),
            color: Colors.white24),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: controller.portfolioList[index].heading.toString(),
            textColor: primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          Gap(20),
          Flexible(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(4),
                ),
                color: secondaryColor.withOpacity(.9),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: .8,
                      blurRadius: 5,
                      offset: Offset(-5, 5),
                      color: Colors.black12),
                  BoxShadow(
                      spreadRadius: .8,
                      blurRadius: 5,
                      offset: Offset(.5, -.5),
                      color: Colors.white24),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    controller.portfolioList[index].image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  ),
  );
}

Widget _buildPortfolioBackSide(int index, ScrollControllerX controller) {
  return Responsive(
    mobile: Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..rotateY(pi),
    child: Container(
      /*height: 370,
      width: 280,*/
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: secondaryColor.withOpacity(.7),
        boxShadow: [
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(-5, 5),
              color: Colors.black12),
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(.5, -.5),
              color: Colors.white24),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 14, right: 14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: controller.portfolioList[index].heading.toString(),
                textColor: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              Gap(10),
              SizedBox(
                // width: 700,
                child: MyText(
                  text: controller.portfolioList[index].paragraph.toString(),
                  textColor: Colors.white,
                  textAlign: TextAlign.justify,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
    tablet: Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..rotateY(pi),
    child: Container(
      /*height: 370,
      width: 280,*/
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: secondaryColor.withOpacity(.7),
        boxShadow: [
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(-5, 5),
              color: Colors.black12),
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(.5, -.5),
              color: Colors.white24),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 14.0, left: 17, right: 17),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: controller.portfolioList[index].heading.toString(),
                textColor: primaryColor,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              Gap(10),
              SizedBox(
                // width: 700,
                child: MyText(
                  text: controller.portfolioList[index].paragraph.toString(),
                  textColor: Colors.white,
                  textAlign: TextAlign.justify,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
    desktop: Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..rotateY(pi),
    child: Container(
      height: 370,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: secondaryColor.withOpacity(.7),
        boxShadow: [
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(-5, 5),
              color: Colors.black12),
          BoxShadow(
              spreadRadius: .8,
              blurRadius: 5,
              offset: Offset(.5, -.5),
              color: Colors.white24),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: controller.portfolioList[index].heading.toString(),
                textColor: primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              Gap(20),
              SizedBox(
                width: 700,
                child: MyText(
                  text: controller.portfolioList[index].paragraph.toString(),
                  textColor: Colors.white,
                  textAlign: TextAlign.justify,
                  fontSize: 18,
                ),
              ),
              // Gap(20),
              SizedBox(
                width: 700,
                child: MyText(
                  text:
                  "My expertise lies in Dart programming, state management, API integration, and performance optimization—all of which help me create smooth and engaging mobile experiences. I believe that great development goes beyond writing code; it should solve real problems, improve usability, and provide meaningful interactions.",
                  textColor: Colors.white,
                  textAlign: TextAlign.justify,
                  fontSize: 18,
                ),
              ),
              // Gap(20),
              SizedBox(
                width: 700,
                child: MyText(
                  text:
                  "Throughout my career, I have worked on diverse projects, developing intuitive mobile applications that align with both business goals and user needs. My process is rooted in clean architecture and best coding practices, ensuring that every app is scalable, efficient, and user-centric.",
                  textColor: Colors.white,
                  textAlign: TextAlign.justify,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  );
}


Widget _footerNavItem(String title, VoidCallback onTap) {
  final controller = Get.put(ScrollControllerX());
  return Obx(() {
    bool isSelected = controller.selectedNavItem.value == title;
    bool isHovered = controller.hoverNavItem.value == title;

    return MouseRegion(
      onEnter: (_) => controller.hoverNavItem.value = title,
      onExit: (_) => controller.hoverNavItem.value = "",
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: 20,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected
                ? primaryColor
                : isHovered
                ? primaryColor.withOpacity(0.7)
                : Colors.white54,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(title),
          ),
        ),
      ),
    );
  });
}

Widget _socialIcon(IconData icon, VoidCallback onTap, String tooltip) {
  RxBool isHovered = false.obs;

  return MouseRegion(
    onEnter: (_) => isHovered.value = true,
    onExit: (_) => isHovered.value = false,
    child: Obx(() => IconButton(
      icon: Icon(
        icon,
        size: 30,
        color: isHovered.value ? primaryColor : Colors.white54,
      ),
      onPressed: onTap,
      tooltip: tooltip,
    )),
  );
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