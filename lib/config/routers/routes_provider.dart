import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes_location.dart';
import 'routes.dart';

final navigationKey = GlobalKey<NavigatorState>();

class RouterProvider extends ChangeNotifier {
  final _navigationKey = GlobalKey<NavigatorState>();
  final GoRouter _router = GoRouter(
    initialLocation: RouteLocation.splash,
    navigatorKey: navigationKey,
    routes: routes,
  );

  GlobalKey<NavigatorState> get getNavigationKey => _navigationKey;
  GoRouter get getGoRouter => _router;
}
