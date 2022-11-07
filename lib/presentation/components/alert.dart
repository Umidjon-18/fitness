import 'package:fitness/config/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/constants.dart';

class Alert extends StatelessWidget {
  const Alert({super.key, required this.status});
  final AlertStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384.w,
      height: 34.h,
      padding: EdgeInsets.only(left: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: customBgColor(status),
      ),
      child: Row(
        children: [
          Icon(Icons.notifications, color: customColor(status), size: 18.r),
          SizedBox(width: 6.w),
          Text(
            'Alert text',
            style: AppTextStyles.body10R.copyWith(color: customColor(status)),
          ),
        ],
      ),
    );
  }

  Color customBgColor(AlertStatus status) {
    switch (status) {
      case AlertStatus.success:
        return AppColors.alert.success.withOpacity(.2);
      case AlertStatus.warning:
        return AppColors.alert.warning.withOpacity(.2);
      case AlertStatus.info:
        return AppColors.alert.info.withOpacity(.2);
      case AlertStatus.error:
        return AppColors.alert.error.withOpacity(.2);
      default:
        return AppColors.alert.success.withOpacity(.2);
    }
  }

  Color customColor(AlertStatus status) {
    switch (status) {
      case AlertStatus.success:
        return AppColors.others.green;
      case AlertStatus.warning:
        return AppColors.others.orange;
      case AlertStatus.info:
        return AppColors.alert.info;
      case AlertStatus.error:
        return AppColors.alert.error;
      default:
        return AppColors.others.green;
    }
  }
}
