import 'package:flutter/material.dart';
import 'package:matchday/src/Features/ListStadium_features/View/show_research_page.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/shop_page.dart';
import 'package:matchday/src/Features/home_features/View/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:matchday/src/Features/search_features/View/search_page.dart';


final GoRouter SettingRoute = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'search',
          builder: (BuildContext context, GoRouterState state) {
            return const SearchPage();
          },
        ),
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
      ],
    ),
  ],
);
