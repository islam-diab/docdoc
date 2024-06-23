import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widget/doctor_list_view.dart';
import 'package:docdoc/features/home/ui/widget/doctor_speciality_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityDoctorBlocBuilder extends StatelessWidget {
  const SpecialityDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is SpecialityLoading ||
            current is SpecialitySuccess ||
            current is SpecialityError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          specialityLoading: () => setupLoading(),
          specialitySuccess: (specialityModel) {
            var specialitionList = specialityModel.specializationDataList;
            return setupSucces(specialitionList);
          },
          specialityError: (error) => setupError(error),
          orElse: () {
            return const Text('Something went wrong!');
          },
        );
      },
    );
  }

  Widget setupSucces(List<SpecializationsData?>? specialitionList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpeciality(
            specializationsData: specialitionList ?? [],
          ),
          verticalSpace(20),
          DoctorListView(
            doctorModel: specialitionList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget setupLoading() {
    return const CircularProgressIndicator();
  }

  Widget setupError(ErrorHandler error) {
    return Text(error.toString());
  }
}
