import 'package:app_recipe/components/input_text.dart';
import 'package:app_recipe/components/primary_button.dart';
import 'package:app_recipe/theme/app_colors.dart';
import 'package:app_recipe/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordScreen extends StatelessWidget{
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
         padding: const EdgeInsets.all(24),
         child: Column(
          children: [
            const SizedBox(height: 200),
            Center(
              child: Text(
                'Password Recovery',
                style: AppTypography.h1(),
                )
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Enter your email to recover your password',
                style: AppTypography.p2(
                  AppColors.secondaryText
                ),
                )
            ),
            const SizedBox(height: 30),
            InputText(
              hint: 'Please enter your email',
              prefixIcon: Icon(
                Icons.email_outlined
              )
            ),
            const SizedBox(height: 30),
            PrimaryButton(
              text: 'Send',
              onPressed: (){
                context.go('/pin-code');
              }
            )
          ],
         ), 
        )
      )
    );
  }
}