import 'package:car_buying/constant/constant_color.dart';
import 'package:car_buying/screens/getstarted_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/car1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const GetStarted();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 40.h, right: 20.w),
                      height: 35.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Guest access",
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 300.h),
                child: Center(
                  child: Text(
                    "JAMAL",
                    style: TextStyle(
                      color: kLightWhiteColor,
                      fontFamily: 'Montserrat-ExtraBold',
                      fontSize: 90.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 450.h),
                child: Center(
                  child: Text(
                    "The best choice for car-buying",
                    style: TextStyle(
                      color: kLightWhiteColor,
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 90.h,
              right: 17.w,
              left: 17.w,
            ),
            height: 55.h,
            width: double.infinity,
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
                  Text(
                    "Log in",
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontFamily: 'Montserrat_Semibold',
                        fontSize: 15.sp),
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
          SizedBox(
            height: 30.h,
          ),
          const Text(
            "Don't have an account?",
            style: TextStyle(
                color: Colors.transparent,
                decorationColor: kLightGreenColor,
                fontFamily: 'Montserrat-Medium',
                shadows: [
                  Shadow(color: kLightGreenColor, offset: Offset(0, -10))
                ],
                decoration: TextDecoration.underline,
                decorationThickness: 3),
          ),
        ],
      ),
    );
  }
}
