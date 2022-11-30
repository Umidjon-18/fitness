import 'package:fitness/presentation/components/custom_radio.dart';
import 'package:flutter/material.dart';

import '../config/constants/constants.dart';
import 'components/alert.dart';
import 'components/checkbox.dart';
import 'components/modal.dart';
import 'components/toggle.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const Alert(status: AlertStatus.success),
            const Modal(),
            const Toggle(),
            CustomCheckbox(isSwitched: true),
            const CustomRadio(),
          ],
        ),
      ),
    );
  }
}
