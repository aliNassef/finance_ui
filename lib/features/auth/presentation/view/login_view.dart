import 'package:finance_ui/core/extensions/mediaquery_size.dart';
import 'package:finance_ui/core/extensions/padding_extension.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_form_field.dart';
import 'package:finance_ui/core/widgets/default_app_button.dart';
import 'package:finance_ui/features/auth/presentation/widgets/custom_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_assets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            Gap(16.w),
            const Expanded(
              child: SizedBox(height: 41, width: 41, child: CustomBackIcon()),
            ),
          ],
        ),
      ),
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
                onPressed: () {},
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                        width: 1.w,
                      ),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(AppAssets.googleSVGIcon),
                  ),
                ),
                Gap(8.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                        width: 1.w,
                      ),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(AppAssets.facebookSVGIcon),
                  ),
                ),
                Gap(8.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                        width: 1.w,
                      ),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(AppAssets.appleSVGIcon),
                  ),
                ),
              ],
            ),
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
