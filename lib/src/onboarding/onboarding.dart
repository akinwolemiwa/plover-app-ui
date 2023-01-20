// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plover/src/constants/assets.dart';
import 'package:plover/src/theme/color.dart';
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
          'Insure your equipments in one click!',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt pellentesque magna a, velit.',
          onboardingOne,
        ),
        _slide(
          'You\'ll get all the protection you need!',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt pellentesque magna a, velit.',
          onboardingTwo,
        ),
        _slide(
          'We’ll always be there to guide you',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt pellentesque magna a, velit.',
          onboardingThree,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: const [
              SizedBox(
                height: 135,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: hasSeenSlide ? 400 : 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
            ),
          ),
          PageView(controller: _controller, children: _slides),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * .6 -
                (hasSeenSlide ? 50 : 0),
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: _slides.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: MyColors.mainGreen,
                  dotHeight: 5,
                  dotWidth: 5,
                ),
              ),
            ),
          ),
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
                          GestureDetector(
                            onTap: () {
                              if ((_controller.page ?? 0) <
                                  (_slides.length - 1)) {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.decelerate);
                              } else {
                                _setSeen();
                              }
                            },
                            child: Row(
                              children: [
                                Text('next'),
                                SvgPicture.asset(
                                  'assets/svg/arrow.svg',
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _loginOptions => Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                onPressed: () {},
                child: const Text('data'),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Log in as an Agent/Merchant',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      );

  Widget _slide(String title, String subtitle, String image,
          [double padding = 0.0]) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
            ),
          ),
          if (hasSeenSlide) const SizedBox(height: 100),
        ],
      );
}
