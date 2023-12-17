import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/on_boarding/ui/widgets/get_started_button.dart';
import 'package:docdoc/features/on_boarding/ui/widgets/onbording_doc_and_text.dart';
import 'package:docdoc/features/on_boarding/ui/widgets/onbording_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const OnBordingLogo(),
                SizedBox(
                  height: 30.h,
                ),
                const OnborgingDocAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GetStartedButton(
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                        name: 'Get Started',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
