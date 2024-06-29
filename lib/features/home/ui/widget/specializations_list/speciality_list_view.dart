import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/ui/widget/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:docdoc/features/home/data/model/specializations_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationsData;
  const SpecialityListView({super.key, required this.specializationsData});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specializationsData.length,
            itemBuilder: (covariant, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  context.read<HomeCubit>().getDoctorsList(
                      specialitionId: widget.specializationsData[index]?.id);
                },
                child: SpecialityListViewItem(
                  specializationsData: widget.specializationsData[index],
                  itemIndex: index,
                  selectedIndex: selectedIndex,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
