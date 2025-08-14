import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'custom_back_icon.dart';

AppBar buildAuthAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Row(
      children: [
        Gap(16.w),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const SizedBox(
              height: 41,
              width: 41,
              child: CustomBackIcon(),
            ),
          ),
        ),
      ],
    ),
  );
}
