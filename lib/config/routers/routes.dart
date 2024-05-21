
import 'package:go_router/go_router.dart';
import '../../features/features.dart';
import '../config.dart';

final routes = [
  GoRoute(
    name: RouteLocation.splash,
    path: RouteLocation.splash,
    parentNavigatorKey: navigationKey,
    builder: SplashScreen.builder,
  ),
  GoRoute(
    name: RouteLocation.login,
    path: RouteLocation.login,
    parentNavigatorKey: navigationKey,
    builder: LoginScreen.builder,
  ),
  GoRoute(
    name: RouteLocation.operation,
    path: RouteLocation.operation,
    parentNavigatorKey: navigationKey,
    builder: OperationScreen.builder,
  ),
];
