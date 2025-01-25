import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../components/primary_button.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Image(
        image: AssetImage('assets/images/tampilan_awal.png'),
        fit: BoxFit.cover,
      ),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Text('Start Cooking', style: AppTypography.h1()),
            const SizedBox(height: 30),
            Text(
               'Let’s join our community\nto cook better food!',
               style: AppTypography.p1(AppColors.secondaryText),
               textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            PrimaryButton(
              text: 'Get Started',
              onPressed:(){
                context.go('/login');
              }
            )
          ]
        ),
      )
    ])
    );
  }
}
