import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widget/doctots_list/doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorSuccess || current is DoctorError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorModel) {
            return setupSucces(doctorModel);
          },
          doctorError: (error) {
            return setupError();
          },
          orElse: () {
            return setupError();
          },
        );
      },
    );
  }
}

Widget setupSucces(doctorList) {
  return DoctorListView(
    doctorModel: doctorList,
  );
}

Widget setupError() {
  return const SizedBox.shrink();
}
