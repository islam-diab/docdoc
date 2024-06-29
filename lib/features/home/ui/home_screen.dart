import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/features/home/ui/widget/doctor_speciality_and_see_all.dart';
import 'package:docdoc/features/home/ui/widget/doctots_list/doctors_bloc_builder.dart';
import 'package:docdoc/features/home/ui/widget/home_container_blue.dart';
import 'package:docdoc/features/home/ui/widget/home_top_bar.dart';
import 'package:docdoc/features/home/ui/widget/specializations_list/speciality_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const HomeContainerBlue(),
              verticalSpace(16),
              const DoctorSpecialityAndSeeAll(),
              verticalSpace(16),
              const SpecialityBlocBuilder(),
              verticalSpace(8),
              const DoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
