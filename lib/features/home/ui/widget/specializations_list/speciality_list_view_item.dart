import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem(
      {super.key,
      required this.specializationsData,
      required this.itemIndex,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          selectedIndex == itemIndex
              ? Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsManager.darkBlue,
                        width: 2,
                      ),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svg/notif.svg',
                      height: 28.h,
                      width: 28.w,
                    ),
                  ),
                )
              : CircleAvatar(
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
            style: selectedIndex == itemIndex
                ? AppTextStyles.font14DarkBluebold
                : AppTextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
