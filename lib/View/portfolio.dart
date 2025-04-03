import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mr_portfolio/Controller/controller.dart';
import 'package:mr_portfolio/MyText.dart';
import 'package:mr_portfolio/responsive.dart';
import 'package:mr_portfolio/themeColor.dart';

class Portfolio extends StatelessWidget {
   Portfolio({super.key});

  final ScrollControllerX controller = Get.put(ScrollControllerX());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Responsive(
      mobile: Container(
        // color: Colors.red,
        key: controller.portfolioKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 60),
                child: MyText(
                  text: "Portfolio",
                  fontSize: 40,
                  textColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
                fit: FlexFit.loose,
                // color: Colors.green,
                // height: height * 2.15,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    // crossAxisSpacing: 40,
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
}
