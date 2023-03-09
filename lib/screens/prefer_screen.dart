import 'package:car_buying/constant/constant_color.dart';
import 'package:car_buying/screens/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreferScreen extends StatefulWidget {
  const PreferScreen({Key? key}) : super(key: key);

  @override
  State<PreferScreen> createState() => _PreferScreenState();
}

class _PreferScreenState extends State<PreferScreen> {
  bool animate = false;
  double opacity = 0.0;
  @override
  void initState() {
    startAnimation();
    animationOpacity();
    super.initState();
  }

  List imgList = ["gff", "fgsgs", "assets/images/car1.png"];

  animationOpacity() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    setState(() {
      opacity = 1;
    });
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            bottom: animate ? 430.h : 150.h,
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 660.h,
              width: 360.w,
              color: kLightGreenColor,
            ),
          ),
          AnimatedPositioned(
            top: animate ? 40.h : 40.h,
            right: animate ? 20.w : 20.w,
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 32.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.r),
                ),
              ),
              child: const Center(
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: kWhiteColor,
                    fontFamily: 'Montserrat-Medium',
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: animate ? 528.h : 520.h,
            // top: 120.h,
            left: 20.w,
            duration: const Duration(seconds: 1),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: opacity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WHICH BODY STYLE",
                    style: TextStyle(
                      height: 1,
                      fontSize: 22.sp,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                  ),
                  Text(
                    "DO YOU PREFER FOR",
                    style: TextStyle(
                      height: 1,
                      fontSize: 22.sp,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: animate ? 508.h : 493.h,
            left: 20.w,
            duration: const Duration(seconds: 1),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: opacity,
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'YOUR NEXT CAR?',
                    style: TextStyle(
                      fontSize: 22.sp,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = kBackgroundColor,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'YOUR NEXT CAR?',
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: kLightGreenColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: animate ? 490.h : 460.h,
            left: 20.w,
            duration: const Duration(milliseconds: 800),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: opacity,
              child: Container(
                color: kBackgroundColor,
                height: 2,
                width: 320.w,
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: animate ? 455.h : 420.h,
            left: 20.w,
            duration: const Duration(milliseconds: 800),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: opacity,
              child: Text(
                "Select as many as you want",
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 14.sp,
                  fontFamily: 'Montserrat-Medium',
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: 620.h,
            left: 17.w,
            duration: const Duration(milliseconds: 800),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: opacity,
              child: Text(
                "Back",
                style: TextStyle(
                  color: kWhiteColor,
                  fontFamily: 'Montserrat-Medium',
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: 330.h,
            duration: const Duration(milliseconds: 800),
            child: Container(
              height: 180.h,
              width: 500.w,
              color: Colors.transparent,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'GeeksforGeeks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'GeeksforGeeks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'GeeksforGeeks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'fgfs',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'Geeks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'Geeksfoks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'sfg',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'fgfs',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'Geeks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                          Chip(
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(8.r),
                            backgroundColor: Colors.greenAccent[100],
                            shadowColor: Colors.black, //CircleAvatar
                            label: Text(
                              'Geeksfoks',
                              style:
                                  TextStyle(fontSize: 20, color: kWhiteColor),
                            ), //Text
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: 590.h,
            left: animate ? 120.w : 17.w,
            right: 17.w,
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ExploreScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 17.w,
                    right: 17.w,
                  ),
                  height: 55.h,
                  width: 326.w,
                  decoration: BoxDecoration(
                    color: kLightGreenColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: opacity,
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontFamily: 'Montserrat_Semibold',
                                fontSize: 15.sp),
                          ),
                        ),
                        Image.asset(
                          "assets/images/arrow.png",
                          color: kGreenColor,
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
