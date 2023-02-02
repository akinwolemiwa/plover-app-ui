import 'package:flutter/material.dart';
import 'package:plover/src/theme/color.dart';
import 'package:plover/src/theme/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mainGreen,
        centerTitle: true,
        title: Text(
          'Plans',
          style: textTheme.bodyText1!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Basic Plan',
                      style: textTheme.headline2!.copyWith(),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$20',
                          style: textTheme.headline2!.copyWith(),
                        ),
                        Text(
                          '/mo',
                          style: textTheme.headline2!.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.check,
                        color: MyColors.lighterGreen,
                      ),
                    ),
                    Text(
                      'Basic insurance',
                      style: textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.check,
                        color: MyColors.lighterGreen,
                      ),
                    ),
                    Text(
                      'Two equipments insurance',
                      style: textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.check,
                        color: MyColors.lighterGreen,
                      ),
                    ),
                    Text(
                      'Up to 4 inventory locations',
                      style: textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
