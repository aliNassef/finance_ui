import 'package:finance_ui/core/extensions/mediaquery_size.dart';
import 'package:finance_ui/core/extensions/padding_extension.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_form_field.dart';
import 'package:finance_ui/core/widgets/default_app_button.dart';
import 'package:finance_ui/features/auth/presentation/view/register_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../widgets/build_auth_appbar.dart';
import '../widgets/social_media_buttons.dart';
import 'forget_pass_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAuthAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(28.h),
            Text(
              'Welcome back!\n Again!',
              style: AppStyles.primaryHeadLinesStyle,
              textAlign: TextAlign.start,
            ),
            Gap(32.h),
            CustomTextFormField(
              controller: TextEditingController(),
              hint: 'Enter your email',
            ),
            Gap(15.h),
            CustomTextFormField(
              controller: TextEditingController(),
              hint: 'Enter your password',
            ),
            Gap(15.h),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  _goToForgetPassword(context);
                },
                child: Text(
                  'Forgot Password?',
                  style: AppStyles.subtitlesStyles.copyWith(
                    color: const Color(0xff6A707C),
                  ),
                ),
              ),
            ),
            Gap(30.h),
            const DefaultAppButton(text: 'Login'),
            Gap(35.h),
            Row(
              children: [
                const Expanded(
                  child: Divider(color: Color(0xffE8ECF4), thickness: 1),
                ),
                Text(
                  'Or Login with',
                  style: AppStyles.subtitlesStyles.copyWith(
                    color: const Color(0xff6A707C),
                  ),
                ).withHorizontalPadding(12),
                const Expanded(
                  child: Divider(color: Color(0xffE8ECF4), thickness: 1),
                ),
              ],
            ),
            Gap(22.h),
            const SocialMediaButtons(),
            Gap(context.height * .25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: AppStyles.semiBold15.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Register Now',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _goToRegister(context);
                          },
                        style: AppStyles.semiBold15.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff202955),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ).withHorizontalPadding(16),
      ),
    );
  }

  _goToRegister(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const RegisterView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }

  void _goToForgetPassword(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ForgetPassView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }
}
