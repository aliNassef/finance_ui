import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xffE8ECF4), width: 1.w),
        color: Colors.white,
      ),
      child: Icon(Icons.arrow_back_ios_rounded, color: AppColors.primaryColor),
    );
  }
}
