import 'package:finance_ui/core/utils/app_assets.dart' show AppAssets;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xffE8ECF4), width: 1.w),
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
              border: Border.all(color: const Color(0xffE8ECF4), width: 1.w),
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
              border: Border.all(color: const Color(0xffE8ECF4), width: 1.w),
              color: Colors.white,
            ),
            child: SvgPicture.asset(AppAssets.appleSVGIcon),
          ),
        ),
      ],
    );
  }
}
