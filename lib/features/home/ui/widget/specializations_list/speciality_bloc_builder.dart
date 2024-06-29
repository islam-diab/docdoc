import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widget/doctots_list/doctors_shimmer_loading.dart';
import 'package:docdoc/features/home/ui/widget/specializations_list/speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widget/specializations_list/specializations_shimmer_loaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityBlocBuilder extends StatelessWidget {
  const SpecialityBlocBuilder({super.key});

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
            return setupSucces(specialityModel);
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
    return SpecialityListView(
      specializationsData: specialitionList ?? [],
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupError(ErrorHandler error) {
    return Text(error.toString());
  }
}
