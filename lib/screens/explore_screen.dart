import 'package:car_buying/constant/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool animate = false;
  double opacity = 0.0;
  VideoPlayerController? _videoPlayerController1;

  @override
  void initState() {
    _videoPlayerController1 =
        VideoPlayerController.asset("assets/videos/car1.mp4")
          ..initialize()
          ..play()
          ..setLooping(true);
    setState(() {});
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

  // Future<void> initializePlayer() async {
  //   _videoPlayerController1 =
  //       VideoPlayerController.asset("assets/videos/car1.mp4")
  //         ..initialize()
  //         ..play()
  //         ..setLooping(true);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            bottom: animate ? -300.h : -500.h,
            duration: const Duration(milliseconds: 500),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: 1000.h,
                    width: 360.w,
                    color: Colors.transparent,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 300.h),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return index == 0
                            ? Container(
                                height: 200.h,
                                width: 360.w,
                                color: kBackgroundColor,
                                child: Stack(
                                  children: [
                                    AnimatedPositioned(
                                      top: 40.h,
                                      right: 17.w,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.search,
                                            color: kWhiteColor,
                                          ),
                                          SizedBox(
                                            width: 10.h,
                                          ),
                                          const Icon(
                                            Icons.notifications,
                                            color: kWhiteColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    AnimatedPositioned(
                                      top: 90.h,
                                      left: 17.w,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "EXPLORE",
                                            style: TextStyle(
                                              color: kWhiteColor,
                                              fontFamily:
                                                  'Montserrat-ExtraBold',
                                              fontSize: 25.sp,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 7.h,
                                          ),
                                          Text(
                                            "Research vehicles and features",
                                            style: TextStyle(
                                              color:
                                                  kWhiteColor.withOpacity(0.5),
                                              fontFamily: 'Montserrat-Medium',
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : index == 3
                                ? Container(
                                    height: 400.h,
                                    width: 200.w,
                                    color: Colors.red,
                                    child:
                                        VideoPlayer(_videoPlayerController1!),
                                  )
                                : Container(
                                    height: 400.h,
                                    width: 200.w,
                                    color: Colors.red,
                                    child: Image.asset(
                                      "assets/images/car2.png",
                                      fit: BoxFit.cover,
                                    ),
                                  );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
