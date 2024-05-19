import 'package:go_router/go_router.dart';
import '../../features/features.dart';
import 'routes_location.dart';
import 'routes_provider.dart';

final routes = [
  GoRoute(
    path: RouteLocation.splash,
    parentNavigatorKey: navigationKey,
    builder: SplashScreen.builder,
  ),
];
