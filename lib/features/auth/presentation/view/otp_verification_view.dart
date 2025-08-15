import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/widgets/default_app_button.dart';
import '../widgets/build_auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/app_styles.dart';
import 'create_new_pass_view.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAuthAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(28),
            Text('OTP Verification', style: AppStyles.primaryHeadLinesStyle),
            const Gap(12),
            Text(
              'Enter the verification code we just sent on your email address.',
              style: AppStyles.black16w500Style.copyWith(
                color: const Color(0xff8391A1),
              ),
            ),
            const Gap(32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Pinput(length: 5)],
            ),
            const Gap(38),
            DefaultAppButton(
              text: 'Verify',
              onPressed: () => _goToCreatePassword(context),
            ),
          ],
        ).withHorizontalPadding(16),
      ),
    );
  }

  void _goToCreatePassword(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CreateNewPassView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }
}
