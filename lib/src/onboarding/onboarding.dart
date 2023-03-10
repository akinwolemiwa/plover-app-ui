// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plover/src/auth/signup.dart';
import 'package:plover/src/constants/assets.dart';
import 'package:plover/src/constants/string.dart';
import 'package:plover/src/theme/color.dart';
import 'package:plover/src/theme/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _controller;
  bool hasSeenSlide = false;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
    _controller.addListener(() {
      if (((_controller.page ?? 0) >= (_slides.length - 1))) _setSeen();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _setSeen() {
    setState(() {
      hasSeenSlide = true;
    });
  }

  List<Widget> get _slides => <Widget>[
        _slide(
          onboarding1Head,
          onboardingLorem,
          onboardingOne,
        ),
        _slide(
          onboarding2Head,
          onboardingLorem,
          onboardingTwo,
        ),
        _slide(
          onboarding3Head,
          onboardingLorem,
          onboardingThree,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          hasSeenSlide
              ? const SizedBox()
              : Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                    onboardingShape,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 68.h,
                ),
                GestureDetector(
                  onTap: _setSeen,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Skip',
                      style: textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    children: _slides,
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: _slides.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: MyColors.mainGreen,
                    dotHeight: 5,
                    dotWidth: 5,
                  ),
                ),
                // Container(
                //   color: Colors.amber,
                //   child: Positioned(
                //     left: 0,
                //     right: 0,
                //     top: MediaQuery.of(context).size.height * .6 -
                //         (hasSeenSlide ? 50 : 0),
                //     child: Center(
                //       child: SmoothPageIndicator(
                //         controller: _controller,
                //         count: _slides.length,
                //         effect: const ExpandingDotsEffect(
                //           activeDotColor: MyColors.mainGreen,
                //           dotHeight: 5,
                //           dotWidth: 5,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: hasSeenSlide
                        ? _loginOptions
                        : Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: _setSeen,
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if ((_controller.page ?? 0) <
                                            (_slides.length - 1)) {
                                          _controller.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.decelerate);
                                        } else {
                                          _setSeen();
                                        }
                                      },
                                      child: Row(
                                        children: [
                                          const Text(
                                            'next',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SvgPicture.asset(
                                            arrow,
                                            color: Colors.white,
                                          ),
                                        ],
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
        ],
      ),
    );
  }

  Widget get _loginOptions => Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ),
              );
            },
            child: Container(
              height: 59.h,
              width: 343.w,
              decoration: BoxDecoration(
                  color: MyColors.mainGreen,
                  borderRadius: BorderRadius.circular(0)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Get Started',
                  style: textTheme.titleMedium!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      );

  Widget _slide(String title, String subtitle, String image) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 24.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: textTheme.displayLarge!.copyWith(
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge!.copyWith(
              height: 1.2,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          if (hasSeenSlide) SizedBox(height: 50.h),
        ],
      );
}
