import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({required this.text, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          // minimumSize: const Size.fromHeight(50)
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTypography.p1(Colors.white),
        ),
      ),
    );
  }
}