import 'package:app_recipe/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../components/input_text.dart';
import '../theme/app_typography.dart';
import '../components/primary_button.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isVisible = false;

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
              InputText(
                hint: 'Enter your email',
                prefixIcon:Icon(Icons.email_outlined)
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    context.go('/forgot-password');
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
                        horizontal: 9, vertical: 13),
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
                    context.go('/signup');
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
