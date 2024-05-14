import 'package:go_router/go_router.dart';
import 'package:movies_flutter/modules/details/presentations/details_view.dart';
import 'package:movies_flutter/modules/home/presentations/home_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/details/:id',
      builder: (context, state) => DetailsView(
        id: state.pathParameters['id'],
      ),
    ),
  ],
);
