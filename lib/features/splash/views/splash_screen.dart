import 'package:candidateapp/config/routers/routers.dart';
import 'package:candidateapp/core/core.dart';
import 'package:candidateapp/features/auth/controller/controllers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static SplashScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SplashScreen();

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: BrandLogoWidget(logoRate: 1.2)),
    );
  }

  @override
  void initState() {
    super.initState();
    delayedFunc();
  }

  Future<void> delayedFunc() async {
    debugPrint("@SplashScreen delayedFunc: 500ms");
    Future.delayed(const Duration(milliseconds: 1000), () async {
      final authProvider = Provider.of<AuthController>(context, listen: false);
      final isAuth = authProvider.hasAuth;

      if (!isAuth) {
        // If there's no Auth, let's clear local storage.
        debugPrint("there's no auth");
        if (mounted) context.goNamed(RouteLocation.login);
      } else {
        debugPrint("has auth");
        if (mounted) context.goNamed(RouteLocation.operation);
      }
    });
  }
}
