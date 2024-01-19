import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

class TextTermsConditions extends StatelessWidget {
  const TextTermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedium.copyWith(height: 1.4),
          ),
          TextSpan(
            text: '\n Don\'t have an account?  ',
            style: TextStyles.font13DarkBlueRegular.copyWith(height: 7),
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
