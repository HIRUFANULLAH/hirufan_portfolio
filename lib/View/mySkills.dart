import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mr_portfolio/Controller/controller.dart';
import 'package:mr_portfolio/MyText.dart';
import 'package:mr_portfolio/responsive.dart';
import 'package:mr_portfolio/themeColor.dart';

class MySkills extends StatelessWidget {
   MySkills({super.key});

   final ScrollControllerX controller = Get.put(ScrollControllerX());
   @override
   Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
     var height = MediaQuery.of(context).size.height;
    return Responsive(
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
              child: SizedBox(
                // color: Colors.green,
                height: height  * 3.1,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    // crossAxisSpacing: 50,
                                    mainAxisSpacing: 50,
                                    childAspectRatio:
                                    .95,
                                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GetBuilder<ScrollControllerX>(
                        builder: (controller) {
                          return MouseRegion(
                            /* onEnter: (_) {
                                                        controller.zoomIn(index);
                                                        // controller.toggleAnimation(index, forward: true);
                                                      },
                                                      onExit: (_) {
                                                        controller.zoomOut(index);
                                                        controller.toggleAnimation(index,
                                                            forward: false);
                                                      }, */
                            /* onEnter: (_) =>
                                              controller.zoomIn(index),
                                          onExit: (_) =>
                                              controller.zoomOut(index),
                                          onEnter: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: true),
                                        onExit: (_) =>
                                            controller.toggleAnimation(index,
                                                forward: false), */
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
                                                    20,
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
    );
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
}
