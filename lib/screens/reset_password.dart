import 'package:app_recipe/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../components/input_text.dart';
import '../theme/app_typography.dart';
import '../components/primary_button.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isLengthValid = false;
  bool _hasNumber = false;
  bool _isVisible = false;

  @override
  void initState(){
    super.initState();
    _passwordController.addListener(_validatePassword);
  }

  @override
   void dispose(){
    _passwordController.dispose();
    super.dispose();
  }

  void _validatePassword(){
    String password = _passwordController.text;

    setState(() {
      _isLengthValid = password.length >= 6;
      _hasNumber = password.contains(RegExp(r'[0-9]'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Center(
                child: Text('Reset your password', style: AppTypography.h1()),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'Please enter your new password',
                  style: AppTypography.p2(),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              InputText(
                hint: 'Enter your password',
                isPassword: _isVisible,
                prefixIcon: Icon(Icons.lock_outlined),
                suffixIcon: IconButton(
                  icon: Icon(_isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                ),
                controller: _passwordController,
                
              ),
              const SizedBox(height: 20),
              Text(
                'Your Password must contain:',
                style: AppTypography.p1(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.check_circle_outlined,
                    color: _isLengthValid ? AppColors.primaryColor : AppColors.secondaryText,
                  ),
                  Text(
                    ' At least 6 characters',
                    style: AppTypography.p2(_isLengthValid ? AppColors.mainText : AppColors.secondaryText),
                  )
                ]
              ),
              const SizedBox(height: 20),
               Row(
                children: [
                  Icon(
                    Icons.check_circle_outlined,
                    color: _hasNumber ? AppColors.primaryColor : AppColors.secondaryText,
                  ),
                  Text(
                    ' Contains a number',
                    style: AppTypography.p2(_hasNumber ? AppColors.mainText : AppColors.secondaryText),
                  )
                ]
              ),
              const SizedBox(height: 20),
              Center(
                child: PrimaryButton(
                  text: 'Done',
                  onPressed: () {
                    // context.go('/pin-code');
                    // TODO: go to home after reset password
                  },
                ),
              ),             
            ],
          ),
        ),
      ),
    );
  }
}
