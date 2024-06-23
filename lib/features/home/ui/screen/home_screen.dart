import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widget/doctor_list_view.dart';
import 'package:docdoc/features/home/ui/widget/doctor_speciality_list.dart';
import 'package:docdoc/features/home/ui/widget/home_container_blue.dart';
import 'package:docdoc/features/home/ui/widget/home_top_bar.dart';
import 'package:docdoc/features/home/ui/widget/speciality_doctor_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(
            20,
            16,
            20,
            28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const HomeContainerBlue(),
              verticalSpace(16),
              const SpecialityDoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
