import 'package:fitness/config/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomRadio extends StatefulWidget {
  const CustomRadio({super.key});
  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 4 / 3,
      child: Radio(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = !isSwitched;
          });
        },
        fillColor: MaterialStateProperty.all(AppColors.primary.shade500),
        groupValue: isSwitched,
      ),
    );
  }
}
