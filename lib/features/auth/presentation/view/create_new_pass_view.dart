import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/default_app_button.dart';
import '../widgets/build_auth_appbar.dart';
import 'auth_successful_view.dart';

class CreateNewPassView extends StatelessWidget {
  const CreateNewPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAuthAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(28),
            Text('Create new password', style: AppStyles.primaryHeadLinesStyle),
            const Gap(12),
            Text(
              'Your new password must be unique from those previously used.',
              style: AppStyles.black16w500Style.copyWith(
                color: const Color(0xff8391A1),
              ),
            ),
            const Gap(32),
            CustomTextFormField(
              hint: 'New Password',
              controller: TextEditingController(),
            ),
            const Gap(15),
            CustomTextFormField(
              hint: 'Confirm password',
              controller: TextEditingController(),
            ),
            const Gap(38),
            DefaultAppButton(
              text: 'Reset Password',
              onPressed: () {
                _goToSuccessfulPage(context);
              },
            ),
          ],
        ).withHorizontalPadding(16),
      ),
    );
  }

  void _goToSuccessfulPage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const AuthSuccessfulView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }
}
