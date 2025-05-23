import 'package:flutter/material.dart';
import '../../pages/home/home_page.dart';
import '../../pages/auth/login_page.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    ],
  );
}
