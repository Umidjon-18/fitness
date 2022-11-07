import 'package:flutter/cupertino.dart';

import '../../config/constants/app_colors.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isSwitched,
      onChanged: (value) => setState(() {
        isSwitched = !isSwitched;
      }),
      activeColor: AppColors.primary.shade500,
      trackColor: AppColors.greyScale.shade200,
      thumbColor: AppColors.others.white,
    );
  }
}
