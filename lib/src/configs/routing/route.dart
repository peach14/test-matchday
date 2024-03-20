import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/View/home_page.dart';
import '../../Features/list_stadium/View/show_research_page.dart';
import '../../Features/profile_shop/View/shop_page.dart';
import '../../Features/search/View/search_page.dart';

final GoRouter route = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'ShowResearch',
          builder: (BuildContext context, GoRouterState state) {
            return const ShowResearch();
          },
        ),
        GoRoute(
          path: 'ShopPage',
          builder: (BuildContext context, GoRouterState state) {
            return const ShopPage();
          },
        ),
        GoRoute(
          path: 'search',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const SearchPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, -1), // Slide from top
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            );
          },
        )
      ],
    ),
  ],
);
