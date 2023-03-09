import 'package:car_buying/constant/constant_color.dart';
import 'package:car_buying/screens/prefer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  bool animate = false;
  double opacity = 0.0;
  @override
  void initState() {
    startAnimation();
    animationOpacity();
    super.initState();
  }

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
            top: animate ? 0 : -550.h,
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 545.h,
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
            top: animate ? 320.h : 260.h,
            left: 20.w,
            duration: const Duration(seconds: 1),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TO TAILOR THE",
                    style: TextStyle(
                      height: 1,
                      fontSize: 30.sp,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                  ),
                  Text(
                    "CONTENT FOR YOU,",
                    style: TextStyle(
                      height: 1,
                      fontSize: 30.sp,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                  ),
                  Text(
                    "PREFERENCES",
                    style: TextStyle(
                      height: 1,
                      fontSize: 30.sp,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: animate ? 400.h : 340.h,
            left: 20.w,
            duration: const Duration(seconds: 1),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'ANSWER A FEW',
                    style: TextStyle(
                      fontSize: 32.sp,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = kBackgroundColor,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'ANSWER A FEW',
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: kLightGreenColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: animate ? 430.h : 370.h,
            left: 20.w,
            duration: const Duration(milliseconds: 950),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'QUESTIONS, PLEASE.',
                    style: TextStyle(
                      fontSize: 32.sp,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = kBackgroundColor,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'QUESTIONS, PLEASE.',
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: kLightGreenColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: animate ? 490.h : 400.h,
            left: 20.w,
            duration: const Duration(milliseconds: 800),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: opacity,
              child: Container(
                color: kBackgroundColor,
                height: 2,
                width: 320.w,
              ),
            ),
          ),
          AnimatedPositioned(
            top: animate ? 510.h : 400.h,
            left: 20.w,
            duration: const Duration(milliseconds: 900),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: Text(
                "It will take less then a minute",
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 14.sp,
                  fontFamily: 'Montserrat-Medium',
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: animate ? 590.h : 550.h,
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PreferScreen();
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
                            "Get started",
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
