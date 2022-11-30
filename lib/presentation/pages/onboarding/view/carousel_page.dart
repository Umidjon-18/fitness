import 'package:fitness/config/constants/app_colors.dart';
import 'package:fitness/config/constants/app_text_styles.dart';
import 'package:fitness/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int initialPage = 0;
  late PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark.dark3,
      extendBody: true,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const ClampingScrollPhysics(),
              controller: pageController,
              onPageChanged: (int pageIndex) {
                initialPage = pageIndex;
                setState(() {});
              },
              children: [
                carouselComponent(
                  imagePath: Assets.images.carousel1,
                  text: 'Find the right\nworkout for what\nyou need',
                  pageController: pageController,
                ),
                carouselComponent(
                  imagePath: Assets.images.carousel2,
                  text: 'Make suitable\nworkouts and great\nresults',
                  pageController: pageController,
                ),
                carouselComponent(
                  imagePath: Assets.images.carousel3,
                  text: "Let's do a workout\nand live healthy with\nus",
                  pageController: pageController,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildIndicator(),
          ),
          Container(
            width: double.maxFinite,
            height: 106.h,
            color: AppColors.dark.dark3,
            margin: EdgeInsets.only(top: 48.h),
            child: GestureDetector(
              onTap: () {
                initialPage != 2
                    ? pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn)
                    : null;
              },
              child: Container(
                height: 58.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 48.h, left: 24.w, right: 24.w),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100.r), color: AppColors.primary.shade500),
                alignment: Alignment.center,
                child: Text('Next', style: AppTextStyles.body16B),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: EdgeInsets.symmetric(horizontal: 2.5.w),
      width: isActive ? 32.w : 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        gradient: AppColors.gradients.purpleG,
        borderRadius: BorderRadius.circular(100.r),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (var i = 0; i < 3; i++) {
      if (initialPage == i) {
        indicators.add(indicator(true));
      } else {
        indicators.add(indicator(false));
      }
    }
    return indicators;
  }

  Widget carouselComponent({imagePath, text,pageController}) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 552.h,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            color: AppColors.dark.dark3,
            padding: EdgeInsets.only(top: 32.h, left: 24.w, right: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.heading2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
