import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.controller,
  });
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF7F8F9),
        hintText: hint,
        hintStyle: AppStyles.subtitlesStyles,
        border: _buildBorderStyle(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffE8ECF4)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffE8ECF4)),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorderStyle() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE8ECF4)),
      borderRadius: BorderRadius.circular(12.r),
    );
  }
}
