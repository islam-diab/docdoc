import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:docdoc/features/home/ui/widget/doctots_list/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors?>? doctorModel;

  const DoctorListView({super.key,required this.doctorModel});

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
