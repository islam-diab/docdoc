import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
 final SpecializationsData? specializationsData;
  const DoctorSpecialityListViewItem({super.key, required this.specializationsData});

  @override
  Widget build(BuildContext context) {
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
                      specializationsData?.name ?? 'General',
                      style: AppTextStyles.font12DarkBlueRegular,
                    )
                  ],
                ),
              );
  }
}
