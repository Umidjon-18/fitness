import 'dart:async';

import 'package:fitness/config/constants/app_colors.dart';
import 'package:fitness/config/constants/app_text_styles.dart';
import 'package:fitness/config/constants/assets.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, Routes.carouselPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 376.h),
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.welcome),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 32.w, bottom: 50.h),
          decoration: BoxDecoration(
            gradient: AppColors.gradients.welcome,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome to 👋', style: AppTextStyles.heading1),
              Text('Gofit', style: AppTextStyles.heading0),
              Text(
                'The best fitness app in this century to accompany your sports.',
                style: AppTextStyles.body18SB,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
