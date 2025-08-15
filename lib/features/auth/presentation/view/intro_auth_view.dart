import '../../../../core/extensions/mediaquery_size.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/default_app_button.dart';
import 'login_view.dart';
import 'register_view.dart';
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
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const RegisterView(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                  ),
                );
              },
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
