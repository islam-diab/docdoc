import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctor Speciality',
              style: AppTextStyles.font18DarkBlueSemiBold,
            ),
            Text(
              'See All',
              style: AppTextStyles.font12MainBlueRegular,
            ),
          ],
        ),
        verticalSpace(16),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (covariant, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: ColorsManager.lightBlue,
                      child: SvgPicture.asset(
                        'assets/svg/notif.svg',
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                    verticalSpace(12),
                    Text(
                      'General',
                      style: AppTextStyles.font12DarkBlueRegular,
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
