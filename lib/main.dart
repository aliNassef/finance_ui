import 'package:device_preview/device_preview.dart';
import 'package:finance_ui/finance_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const FinanceApp(),
    ),
  );
}
