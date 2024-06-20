import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/test.webp',
                    height: 110.h,
                    width: 110.h,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: AppTextStyles.font16DarkBlueBold,
                    ),
                    verticalSpace(5),
                    Text(
                      'RSUD Gatot Subroto',
                      style: AppTextStyles.font12GrayMedium,
                    ),
                    verticalSpace(5),
                    Text(
                      'doctor@gmail.com',
                      style: AppTextStyles.font12GrayMedium,
                    ),
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
