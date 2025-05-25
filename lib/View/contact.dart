import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mr_portfolio/Controller/controller.dart';
import 'package:mr_portfolio/MyText.dart';
import 'package:mr_portfolio/responsive.dart';
import 'package:mr_portfolio/themeColor.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final ScrollControllerX controller = Get.put(ScrollControllerX());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Responsive(
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
                  Container(
                    height: height*.45,
                    width: width*45,
                    child: Image.asset(
                      "assets/Project_Image/contact.png",
                      // height: height * .4,
                    ),
                  ),
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
                  top: MediaQuery
                      .of(context)
                      .size
                      .width /
                      (16 / 9) *
                      0.1, // Adjust multiplier as needed
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("assets/Project_Image/contact.png",
                        height: height * .4,),
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
                  top: MediaQuery
                      .of(context)
                      .size
                      .width /
                      (16 / 9) *
                      0.1, // Adjust multiplier as needed
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("assets/Project_Image/contact.png",
                        height: height * .6,),
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
                            child: MouseRegion(
                              onEnter: (_) => controller.onEnter(true),
                              onExit: (_) => controller.onEnter(false),
                              child: Obx(() {
                                return AnimatedScale(
                                  scale: controller.isHovered.value
                                      ? 1.1
                                      : 1.0,
                                  duration: Duration(milliseconds: 200),
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
                                );
                              }),
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
                            child: MouseRegion(
                              onEnter: (_) => controller.onEnter2(true),
                              onExit: (_) => controller.onEnter2(false),
                              child: Obx(() {
                                return AnimatedScale(
                                  scale: controller.isHovered2.value
                                      ? 1.1
                                      : 1.0,
                                  duration: Duration(milliseconds: 200),
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
                                );
                              }),
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
    );
  }
}
