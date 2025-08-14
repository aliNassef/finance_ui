import 'package:finance_ui/core/extensions/padding_extension.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_form_field.dart';
import 'package:finance_ui/core/widgets/default_app_button.dart';
import 'package:finance_ui/features/auth/presentation/widgets/build_auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            DefaultAppButton(text: 'Reset Password', onPressed: () {}),
          ],
        ).withHorizontalPadding(16),
      ),
    );
  }
}
