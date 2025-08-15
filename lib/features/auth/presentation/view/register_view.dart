import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/default_app_button.dart';
import 'login_view.dart';
import '../widgets/social_media_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/build_auth_appbar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAuthAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(28),
            Text(
              'Hello! Register to get started',
              style: AppStyles.primaryHeadLinesStyle,
            ),
            const Gap(32),
            CustomTextFormField(
              hint: 'Username',
              controller: TextEditingController(),
            ),
            const Gap(12),
            CustomTextFormField(
              hint: 'Email',
              controller: TextEditingController(),
            ),
            const Gap(12),
            CustomTextFormField(
              hint: 'Password',
              controller: TextEditingController(),
            ),
            const Gap(12),
            CustomTextFormField(
              hint: 'Confirm password',
              controller: TextEditingController(),
            ),
            const Gap(30),
            const DefaultAppButton(text: 'Register'),
            const Gap(35),
            Row(
              children: [
                const Expanded(
                  child: Divider(color: Color(0xffE8ECF4), thickness: 1),
                ),
                Text(
                  'Or Register with',
                  style: AppStyles.subtitlesStyles.copyWith(
                    color: const Color(0xff6A707C),
                  ),
                ).withHorizontalPadding(12),
                const Expanded(
                  child: Divider(color: Color(0xffE8ECF4), thickness: 1),
                ),
              ],
            ),
            const Gap(22),
            const SocialMediaButtons(),
            const Gap(54),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?',
                        style: AppStyles.semiBold15.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Login Now',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const LoginView(),
                                transitionsBuilder:
                                    (
                                      context,
                                      animation,
                                      secondaryAnimation,
                                      child,
                                    ) => FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    ),
                              ),
                            );
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
}
