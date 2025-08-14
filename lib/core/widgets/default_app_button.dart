import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultAppButton extends StatelessWidget {
  const DefaultAppButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.radius = 8,
    this.onPressed,
  });
  final String text;
  final Color? backgroundColor;
  final double radius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 19.h)),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? AppColors.primaryColor,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius.r)),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyles.semiBold15.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
