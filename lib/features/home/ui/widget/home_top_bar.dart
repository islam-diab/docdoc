import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Hi, Islam',
        style: AppTextStyles.font18DarkBlueBold,
      ),
      subtitle: Text(
        'How are you Today?',
        style: AppTextStyles.font11GrayRegular,
      ),
      trailing: CircleAvatar(
        backgroundColor: ColorsManager.moreLighterGray,
        child: SvgPicture.asset(
          'assets/svg/notif.svg',
        ),
      ),
    );
  }
}
