import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const GetStartedButton({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        name,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
