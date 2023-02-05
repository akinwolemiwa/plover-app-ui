import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plover/src/theme/font.dart';

ThemeData themeData = ThemeData(
    textTheme: TextTheme(
  displayLarge: _style2(size: 26.sp, weight: FontWeight.w600),
  displayMedium: _style1(size: 20.sp, weight: FontWeight.w800),
  bodyLarge: _style2(size: 16.sp, weight: FontWeight.w500),
  bodyMedium: _style1(size: 14.sp, weight: FontWeight.w400),
  titleMedium: _style2(size: 12.sp, weight: FontWeight.w600),
  titleSmall: _style1(size: 10.sp, weight: FontWeight.w400),
));

TextStyle _style1({
  required double size,
  FontWeight weight = FontWeight.w400,
  Color color = Colors.black,
}) =>
    TextStyle(
      fontSize: size.sp,
      fontWeight: weight,
      color: color,
      fontFamily: Fonts.avenir,
    );

TextStyle _style2({
  required double size,
  FontWeight weight = FontWeight.w400,
  Color color = Colors.black,
}) =>
    TextStyle(
      fontSize: size.sp,
      fontWeight: weight,
      color: color,
      fontFamily: Fonts.metropolis,
    );

final TextTheme textTheme = themeData.textTheme;
