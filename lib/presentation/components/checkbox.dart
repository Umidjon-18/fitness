import 'package:fitness/config/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isSwitched,
      onChanged: (value) => setState(() {
        isSwitched = !isSwitched;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      checkColor: AppColors.others.white,
      fillColor: MaterialStateProperty.all(AppColors.primary.shade500),
      
    );
  }
}
