import 'package:app_recipe/screens/forgot_password_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/started_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/signup_screen.dart';
import '../screens/pin_code_screen.dart';
import '../screens/reset_password.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/started',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/started',
        builder: (context, state) => const StartedScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/pin-code',
        builder: (context, state) => const PinCodeScreen(),
      ),
      GoRoute(
        path: '/reset-password',
        builder: (context, state) => const ResetPasswordScreen(),
      ),
    ],
  );
}
