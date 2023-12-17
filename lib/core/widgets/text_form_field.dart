import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final bool? isObscureText;
  const AppTextFormField(
      {super.key, required this.hintText, this.suffixIcon, this.isObscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        fillColor: ColorsManager.moreLightGray,
        filled: true,
        isDense: true,
        hintStyle: TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.mainBlue,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(16.0)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.lighterGray,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
