import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/features/login/ui/widget/Text_terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../on_boarding/ui/widgets/get_started_button.dart';
import '../logic/cubit/login_cubit.dart';
import 'widget/email_and_passwored.dart';
import 'widget/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wlcome Back',
                style: AppTextStyles.font24BlueBold,
              ),
              verticalSpace(20),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: AppTextStyles.font14GrayRegular,
              ),
              verticalSpace(30),
              Column(
                children: [
                  const EmailAndPasswored(),
                  verticalSpace(24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password?',
                      style: AppTextStyles.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  GetStartedButton(
                    onPressed: () {
                      validateThenDoLogin(context);
                    },
                    name: 'Login',
                  ),
                  verticalSpace(32),
                  const TextTermsConditions(),
                  const LoginBlocListener(),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
