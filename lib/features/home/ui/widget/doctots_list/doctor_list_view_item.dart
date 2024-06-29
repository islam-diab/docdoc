import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors doctorsModel;
  const DoctorListViewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
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
                  doctorsModel.name ?? 'Name',
                  style: AppTextStyles.font16DarkBlueBold,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel.degree} | ${doctorsModel.phone}',
                  style: AppTextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel.email ?? 'Email',
                  style: AppTextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
