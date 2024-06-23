import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/ui/widget/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpeciality extends StatelessWidget {
  final List<SpecializationsData?> specializationsData;
  const DoctorSpeciality({super.key, required this.specializationsData});

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
            itemCount: specializationsData.length,
            itemBuilder: (covariant, index) {
              return DoctorSpecialityListViewItem(
                specializationsData: specializationsData[index],
              );
            },
          ),
        )
      ],
    );
  }
}
