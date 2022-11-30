import 'package:fitness/config/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomCheckbox extends StatefulWidget {
  CustomCheckbox({super.key, required this.isSwitched});
  bool isSwitched;
  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 4 / 3,
      child: Checkbox(
        value: widget.isSwitched,
        onChanged: (value) {
          setState(() {
            widget.isSwitched = !widget.isSwitched;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        checkColor: AppColors.others.white,
        fillColor: MaterialStateProperty.all(AppColors.primary.shade500),
      ),
    );
  }
}
