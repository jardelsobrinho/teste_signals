import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_signals/page_count.dart';
import 'package:test_signals/page_home.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const PageHome();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'count',
          builder: (BuildContext context, GoRouterState state) {
            return const PageCount();
          },
        ),
      ],
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
