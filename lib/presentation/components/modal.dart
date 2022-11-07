import 'package:fitness/config/constants/app_colors.dart';
import 'package:fitness/config/constants/app_text_styles.dart';
import 'package:fitness/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 32.w),
      decoration: BoxDecoration(
        color: AppColors.others.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          Image.asset(Assets.images.modal, width: 185.w, height: 180.h),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child: Text(
              'Modal Title',
              style: AppTextStyles.heading4.copyWith(color: AppColors.primary.shade500),
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet hua qui lori ipsum sit ghui amet poety',
            textAlign: TextAlign.justify,
            style: AppTextStyles.body16R,
          ),
          CustomButton(
            width: double.maxFinite,
            height: 58.h,
            radius: 100.r,
            margin: EdgeInsets.symmetric(vertical: 32.h),
            bgColor: AppColors.primary.shade500,
            onTap: () {},
            child: Text(
              'Button',
              style: AppTextStyles.body16B.copyWith(color: AppColors.others.white),
            ),
          ),
        ],
      ),
    );
  }
}
