import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plover/src/auth/login.dart';
import 'package:plover/src/theme/color.dart';
import 'package:plover/src/theme/text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;

  void _onChecked(bool? newValue) {
    if (newValue != null) {
      setState(() {
        _isChecked = newValue;
      });
    }
  }

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
                'Create an Account',
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
                'Let\'s begin this Journey!',
                style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 163.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter first name',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Name',
                      style: textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 163.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter last name',
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
              ],
            ),
            SizedBox(
              height: 16.h,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                  width: 15.w,
                  child: Checkbox(
                    activeColor: MyColors.lighterGreen,
                    checkColor: Colors.white,
                    value: _isChecked,
                    onChanged: _onChecked,
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(
                        width: 1,
                        color: MyColors.defaultGrey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 298.w,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'By creating an account, you agree to our ',
                          style: textTheme.titleSmall!.copyWith(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        TextSpan(
                          text: 'Terms of Use ',
                          style: textTheme.titleSmall!.copyWith(
                            color: MyColors.lighterGreen,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: textTheme.titleSmall!.copyWith(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: textTheme.titleSmall!.copyWith(
                            color: MyColors.lighterGreen,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
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
                    'Sign up',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Already have an account? ',
                        style: textTheme.titleSmall!.copyWith(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      TextSpan(
                        text: 'Log in',
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
