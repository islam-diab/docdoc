import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:docdoc/features/home/ui/widget/doctor_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors?>? doctorModel;

  const DoctorListView({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorModel!.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(doctorsModel: doctorModel![index]!);
        },
      ),
    );
  }
}
