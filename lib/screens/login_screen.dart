import 'package:app_recipe/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../components/input_text.dart';
import '../theme/app_typography.dart';
import '../components/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double horizontalPadding = screenWidth * 0.3;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Center(
                child: Text('Welcome Back', style: AppTypography.h1()),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'Please enter your account here',
                  style: AppTypography.p2(),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              InputText(label: 'Email', hint: 'Enter your email'),
              const SizedBox(height: 20),
              InputText(
                label: 'Password',
                hint: 'Enter your password',
                isPassword: true,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    //TODO: Frogot Password
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppTypography.p2(),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: PrimaryButton(
                  text: 'Login',
                  onPressed: () {
                    //TODO: Login
                  },
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Or continue with',
                  style: AppTypography.p2(AppColors.secondaryText),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 9, vertical: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children:[
                      Icon(Icons.alternate_email , color: Colors.white,),
                      Text(
                      'Google',
                      // textAlign: TextAlign.center,
                      style: AppTypography.p1(Colors.white),
                    ),
                      ]
                    )
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  'Don’t have any account?',
                  style: AppTypography.p2(),
                ),
                TextButton(
                  onPressed: () {
                    //TODO: Register
                  },
                  child: Text(
                    'Sign Up',
                    style: AppTypography.p2(AppColors.primaryColor),
                  ),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
