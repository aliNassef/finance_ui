import 'package:finance_ui/core/extensions/padding_extension.dart';
import 'package:finance_ui/core/utils/app_assets.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/default_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'login_view.dart';

class AuthSuccessfulView extends StatelessWidget {
  const AuthSuccessfulView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.successfulMarkIcon),
          const Gap(35),
          Text('Password Changed!', style: AppStyles.primaryHeadLinesStyle),
          const Gap(8),
          Text(
            'Your password has been changed successfully.',
            style: AppStyles.black15BoldStyle.copyWith(
              fontWeight: FontWeight.w500,
              color: const Color(0xff8391A1),
            ),
          ),
          const Gap(40),
          DefaultAppButton(
            text: 'Back to Login',
            onPressed: () => _goToLogin(context),
          ),
        ],
      ).withHorizontalPadding(22),
    );
  }

  _goToLogin(context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoginView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }
}
