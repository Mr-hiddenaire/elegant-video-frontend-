import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../pages/home/home_page.dart';
import '../../pages/video/video_page.dart';
import '../../pages/account/account_page.dart';
import '../../pages/auth/login_page.dart';
import '../../pages/auth/register_page.dart';
import '../../pages/subscribe/subscribe_page.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/video', builder: (context, state) {
        final videoUrl = state.uri.queryParameters['url'] ?? '';
        return VideoPage(videoUrl: videoUrl);
      }),
      GoRoute(path: '/account', builder: (context, state) => const AccountPage()),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/register', builder: (context, state) => const RegisterPage()),
      GoRoute(path: '/subscribe', builder: (context, state) => const SubscribePage()),
    ],
  );
}
