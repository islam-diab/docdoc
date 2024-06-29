import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityAndSeeAll extends StatelessWidget {
  const DoctorSpecialityAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
