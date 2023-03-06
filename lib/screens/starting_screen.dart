import 'package:car_buying/constant/constant_color.dart';
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
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("assets/images/car1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 280.h),
                child: Center(
                  child: Text(
                    "JAMAL",
                    style: TextStyle(
                      color: kLightWhiteColor,
                      fontFamily: 'Poppins-Medium',
                      fontWeight: FontWeight.bold,
                      fontSize: 100.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 430.h),
                child: Center(
                  child: Text(
                    "The best choice for car-buying",
                    style: TextStyle(
                      color: kLightWhiteColor,
                      fontFamily: 'Poppins-Medium',
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 60.h,
              right: 17.w,
              left: 17.w,
            ),
            height: 60.h,
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
                        color: kGreenColor,
                        fontFamily: 'Poppins-SemiBold',
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
          Text(
            "Log in",
            style: TextStyle(
                color: kGreenColor,
                fontFamily: 'Poppins-SemiBold',
                fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}
