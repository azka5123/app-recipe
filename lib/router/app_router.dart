import 'package:app_recipe/screens/forgot_password_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/started_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';

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
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
    ],
  );
}
