import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mr_portfolio/Controller/controller.dart';
import 'package:mr_portfolio/MyText.dart';
import 'package:mr_portfolio/responsive.dart';

class About extends StatelessWidget {
   About({super.key});
  final ScrollControllerX controller = Get.put(ScrollControllerX());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Responsive(
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
    );
  }
}
