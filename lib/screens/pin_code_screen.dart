import 'package:app_recipe/components/input_text.dart';
import 'package:app_recipe/components/primary_button.dart';
import 'package:app_recipe/theme/app_colors.dart';
import 'package:app_recipe/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeScreen extends StatelessWidget {
  const PinCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(children: [
        const SizedBox(height: 200),
        Center(
          child: Text('Check your email', style: AppTypography.h1()),
        ),
        const SizedBox(height: 8),
        Center(
            child: Text(
          'We.ve sent the code to your email',
          style: AppTypography.p2(AppColors.secondaryText),
        )),
        const SizedBox(height: 30),
        PinCodeTextField(
          appContext: context,
          length: 4,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            inactiveColor: AppColors.outline,
            activeColor: AppColors.outline,
            selectedColor: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
            fieldHeight: 72,
            fieldWidth: 72,
          ),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
        const SizedBox(height: 30),
        Center(
            child: RichText(
                text: TextSpan(style: AppTypography.p2(), children: [
          TextSpan(text: 'code expires in: '),
          TextSpan(
              text: '00:30', style: AppTypography.p2(AppColors.secondaryColor))
        ]))),
        const SizedBox(height: 50),
        Center(
          child: PrimaryButton(
            text: 'Verify',
            onPressed: () {
              context.go('/reset-password');
              //TODO : Make logic for login and reset password
            },
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                //TODO : Send New Email to User
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: AppColors.outline),
                ),
              child: Text(
                'Send Again',
                textAlign: TextAlign.center,
                style: AppTypography.p1(AppColors.secondaryText),
              ),
            ),
          ),
        ),
      ]),
    )));
  }
}
