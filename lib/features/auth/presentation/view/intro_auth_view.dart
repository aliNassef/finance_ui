import 'package:finance_ui/core/extensions/mediaquery_size.dart';
import 'package:finance_ui/core/extensions/padding_extension.dart';
import 'package:finance_ui/core/utils/app_assets.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/default_app_button.dart';
import 'package:finance_ui/features/auth/presentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IntroAuthView extends StatelessWidget {
  const IntroAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              AppAssets.onBoard,
              height: context.height * .75,
              width: context.width,
              fit: BoxFit.cover,
            ),
            Gap(21.h),
            DefaultAppButton(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const LoginView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                  ),
                );
              },
            ).withHorizontalPadding(16),
            Gap(15.h),
            DefaultAppButton(
              text: 'Register',
              onPressed: () {},
            ).withHorizontalPadding(16),
            Gap(45.h),
            TextButton(
              onPressed: () {},
              child: Text(
                'Continue as a guest',
                style: AppStyles.black15BoldStyle.copyWith(
                  decoration: TextDecoration.underline,
                  color: AppColors.darkblue,
                  decorationThickness: 2,
                  decorationColor: AppColors.darkblue,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(30.h),
          ],
        ),
      ),
    );
  }
}
