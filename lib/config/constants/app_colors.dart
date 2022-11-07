import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static PrimaryColor primary = const PrimaryColor(
    0xFF6842FF,
    <int, Color>{
      500: Color(0xFF6842FF),
      400: Color(0xFF8668FF),
      300: Color(0xFFA48EFF),
      200: Color(0xFFC3B3FF),
      100: Color(0xFFF0ECFF),
    },
  );
  static SecondaryColor secondary = const SecondaryColor(
    0xFFFFD300,
    <int, Color>{
      500: Color(0xFFFFD300),
      400: Color(0xFFFFDC33),
      300: Color(0xFFFFE566),
      200: Color(0xFFFFED99),
      100: Color(0xFFFFFBE6),
    },
  );

  static AlertColor alert = const AlertColor(
    0xFF4ADE80,
    <int, Color>{
      1: Color(0xFF4ADE80),
      2: Color(0xFF246BFD),
      3: Color(0xFFFACC15),
      4: Color(0xFFF75555),
      5: Color(0xFFD8D8D8),
      6: Color(0xFF6B5BAB),
    },
  );

  static GreyScale greyScale = const GreyScale(
    0xFF212121,
    <int, Color>{
      900: Color(0xFF212121),
      800: Color(0xFF424242),
      700: Color(0xFF616161),
      600: Color(0xFF757575),
      500: Color(0xFF9E9E9E),
      400: Color(0xFFBDBDBD),
      300: Color(0xFFE0E0E0),
      200: Color(0xFFEEEEEE),
      100: Color(0xFFF5F5F5),
      50: Color(0xFFFAFAFA),
    },
  );

  static Gradients gradients = const Gradients();

  static Dark dark = const Dark();

  static Others others = const Others();
  
  static Background background = const Background();

  static TextColor textColor = TextColor();
}

class PrimaryColor extends ColorSwatch<int> {
  const PrimaryColor(super.primary, super.swatch);

  Color get shade500 => this[500]!;

  Color get shade400 => this[400]!;

  Color get shade300 => this[300]!;

  Color get shade200 => this[200]!;

  Color get shade100 => this[100]!;
}

class SecondaryColor extends ColorSwatch<int> {
  const SecondaryColor(super.primary, super.swatch);

  Color get shade500 => this[500]!;

  Color get shade400 => this[400]!;

  Color get shade300 => this[300]!;

  Color get shade200 => this[200]!;

  Color get shade100 => this[100]!;
}

class AlertColor extends ColorSwatch<int> {
  const AlertColor(super.primary, super.swatch);

  Color get success => this[1]!;

  Color get info => this[2]!;

  Color get warning => this[3]!;

  Color get error => this[4]!;

  Color get disabled => this[5]!;

  Color get disButton => this[6]!;
}

class GreyScale extends ColorSwatch<int> {
  const GreyScale(super.primary, super.swatch);

  Color get shade900 => this[900]!;

  Color get shade800 => this[800]!;

  Color get shade700 => this[700]!;

  Color get shade600 => this[600]!;

  Color get shade500 => this[500]!;

  Color get shade400 => this[400]!;

  Color get shade300 => this[300]!;

  Color get shade200 => this[200]!;

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;
}

class Gradients {
  const Gradients();

  LinearGradient get purpleG => const LinearGradient(colors: [Color(0xff6842FF), Color(0xff896BFF)]);

  LinearGradient get greenG => const LinearGradient(colors: [Color(0xff1AB65C), Color(0xff39E180)]);

  LinearGradient get blueG => const LinearGradient(colors: [Color(0xff246BFD), Color(0xff6F9EFF)]);

  LinearGradient get yellowG => const LinearGradient(colors: [Color(0xffFACC15), Color(0xffFFE580)]);

  LinearGradient get redG => const LinearGradient(colors: [Color(0xffFF5A5F), Color(0xffFF9094)]);
}

class Dark {
  const Dark();

  Color get dark1 => const Color(0xFF181A20);

  Color get dark2 => const Color(0xFF1F222A);

  Color get dark3 => const Color(0xFF35383F);
}

class Others {
  const Others();

  Color get white => Colors.white;
  Color get black => Colors.black;
  Color get red => const Color(0xFFF54336);
  Color get pink => const Color(0xFFEA1E61);
  Color get purple => const Color(0xFF9D28AC);
  Color get deepPurple => const Color(0xFF673AB3);
  Color get indigo => const Color(0xFF3F51B2);
  Color get blue => const Color(0xFF1A96F0);
  Color get lightBlue => const Color(0xFF00A9F1);
  Color get cyan => const Color(0xFF00BCD3);
  Color get teal => const Color(0xFF009689);
  Color get green => const Color(0xFF4AAF57);
  Color get lightGreen => const Color(0xFF8BC255);
  Color get lime => const Color(0xFFCDDC4C);
  Color get yellow => const Color(0xFFFFEB4F);
  Color get amber => const Color(0xFFFFC02D);
  Color get orange => const Color(0xFFFF981F);
  Color get deepOrange => const Color(0xFFFF5726);
  Color get brown => const Color(0xFF7A5548);
  Color get blueGrey => const Color(0xFF607D8A);
}

class Background {
  const Background();

  Color get green => const Color(0xFFF6FFFA);
  Color get blue => const Color(0xFFF6FAFD);
  Color get red => const Color(0xFFFFF5F5);
  Color get yellow => const Color(0xFFFFFEE0);
  Color get purple => const Color(0xFFFCF4FF);
}

class TextColor extends ColorSwatch<int> {
  TextColor()
      : super(
          0xFF332f2e,
          <int, Color>{
            1: const Color(0xFF332f2e),
            2: const Color(0xFFADB4B9),
            3: const Color(0xffe8e8e8),
            54: Colors.black54,
            26: Colors.black26,
          },
        );

  Color get shade1 => this[1]!;
  Color get shade2 => this[2]!;
  Color get shade3 => this[3]!;
  Color get shade54 => this[54]!;
  Color get shade26 => this[26]!;
}
