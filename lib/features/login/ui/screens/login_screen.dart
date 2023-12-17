import 'package:docdoc/core/helpers/spaser.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:docdoc/core/widgets/text_form_field.dart';
import 'package:docdoc/features/login/ui/widget/Text_terms_conditions.dart';
import 'package:docdoc/features/on_boarding/ui/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;
  final formKey = GlobalKey<FormState>();
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
                style: TextStyles.font24BlueBold,
              ),
              vSpace(20),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GrayRegular,
              ),
              vSpace(30),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const AppTextFormField(hintText: 'Email'),
                    vSpace(18),
                    AppTextFormField(
                      hintText: 'Passwored',
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    vSpace(24),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    vSpace(40),
                    GetStartedButton(
                      onPressed: () {},
                      name: 'Login',
                    ),
                    vSpace(32),
                    const TextTermsConditions(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
