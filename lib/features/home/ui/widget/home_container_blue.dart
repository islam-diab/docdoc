import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainerBlue extends StatelessWidget {
  const HomeContainerBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 170.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/home_contianer_blue.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppTextStyles.font18WhiteMedium,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Find Nearby',
                    style: AppTextStyles.font12MainBlueRegular,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            child: Image.asset(
              'assets/images/onbording_doc.png',
              height: 200.h,
            ),
          )
        ],
      ),
    );
  }
}
