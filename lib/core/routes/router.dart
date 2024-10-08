import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:placeholder_app/features/album/presentation/pages/albums_page.dart';
import 'package:placeholder_app/features/home.dart';
import 'package:placeholder_app/features/launch/presentation/pages/launch_page.dart';
import 'package:placeholder_app/features/post/presentation/pages/posts_page.dart';

part "navigation_menu.dart";

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "root");

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: LaunchPage.path,
  routes: [
    GoRoute(
      path: LaunchPage.path,
      name: LaunchPage.path,
      builder: (context, state) => LaunchPage.content(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => _NavigationMenu(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: HomePage.path,
              builder: (context, state) => HomePage.content(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: PostsPage.path,
              builder: (context, state) => PostsPage.content(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AlbumsPage.path,
              builder: (context, state) => AlbumsPage.content(),
            ),
          ],
        ),
      ],
    ),
  ],
);
