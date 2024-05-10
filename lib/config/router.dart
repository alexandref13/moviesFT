import 'package:go_router/go_router.dart';
import 'package:movies_flutter/modules/home/presentations/home_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
  ],
);
