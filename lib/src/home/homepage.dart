import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plover/src/theme/color.dart';
import 'package:plover/src/theme/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 68.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Hello ',
                              style: textTheme.bodyText1!.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            TextSpan(
                              text: 'Adetuba.',
                              style: textTheme.bodyText1!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Happy to have you on board! Let\'s start by finding\nout which insurance fits you best.',
                        style: textTheme.subtitle1!.copyWith(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/svg/add.svg',
                    height: 20.h,
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 19, right: 16, top: 19, bottom: 19),
                        child: SvgPicture.asset(
                          'assets/svg/tap.svg',
                          height: 32.h,
                          width: 32.w,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 19, 0, 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discover what\nfits your needs',
                              style: textTheme.headline2!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Tap here to discover the plan that\nbest suits you.',
                              style: textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 91.738),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Quick Actions',
                style: textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: MyColors.anotherGreen,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 120.h,
                      width: 400.w,
                      child: SvgPicture.asset(
                        'assets/svg/swirl.svg',
                        color: const Color(0xff009F7D),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 17, 155, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image.asset(
                              'assets/png/onboarding1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Insure a new equipment',
                            style: textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Have a new equipment? Insure it now.',
                            style: textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: MyColors.tealGreen,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 120.h,
                      width: 400.w,
                      child: SvgPicture.asset(
                        'assets/svg/swirl.svg',
                        color: const Color(0xff009F7D),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 17, 131, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: Image.asset(
                              'assets/png/onboarding3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Report a claim',
                            style: textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Can’t find your equipment? Submit a claim for processing.',
                            style: textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Recent Issues',
                    style: textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'see all',
                    style: textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 8.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.defaultGrey,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SizedBox(
                              height: 40.h,
                              width: 40.w,
                              child: Image.network(
                                'https://i.pcmag.com/imagery/roundups/018cwxjHcVMwiaDIpTnZJ8H-51..v1637092108.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Canon camera 450',
                            style: textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.defaultGrey,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SizedBox(
                              height: 40.h,
                              width: 40.w,
                              child: Image.network(
                                'https://www.blackcountrychamber.co.uk/upload/6c4cf10f-0493-4710-975d-51947dd77db9.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Vending Machine',
                            style: textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
