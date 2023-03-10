import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plover/src/theme/color.dart';
import 'package:plover/src/theme/text.dart';
import 'package:plover/src/widgets/nav.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 68.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Hello! Welcome back',
                style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  width: 343.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter email address',
                      hintStyle: textTheme.titleSmall!.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.defaultGrey,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  width: 343.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: textTheme.titleSmall!.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.defaultGrey,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'forgot password',
                style: textTheme.titleSmall!.copyWith(
                  color: MyColors.lighterGreen,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 64.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavWidget(),
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
                    'Login',
                    style: textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: textTheme.titleSmall!.copyWith(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: textTheme.titleSmall!.copyWith(
                          color: MyColors.lighterGreen,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
