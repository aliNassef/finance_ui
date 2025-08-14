import 'package:finance_ui/core/extensions/padding_extension.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_form_field.dart';
import 'package:finance_ui/core/widgets/default_app_button.dart';
import 'package:finance_ui/features/auth/presentation/view/otp_verification_view.dart';
import 'package:finance_ui/features/auth/presentation/widgets/build_auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAuthAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(28),
          Text('Forgot Password?', style: AppStyles.primaryHeadLinesStyle),
          const Gap(12),
          Text(
            'Don\'t worry! It occurs. Please enter the email address linked with your account.',
            style: AppStyles.black16w500Style.copyWith(
              color: const Color(0xff8391A1),
            ),
          ),
          const Gap(32),
          CustomTextFormField(
            hint: 'Enter your email',
            controller: TextEditingController(),
          ),
          const Gap(38),
          DefaultAppButton(
            text: 'Send Code',
            onPressed: () => _goToOtpVerification(context),
          ),
        ],
      ).withHorizontalPadding(16),
    );
  }

  _goToOtpVerification(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OtpVerificationView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }
}
