import 'package:candidateapp/config/routers/routers.dart';
import 'package:candidateapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    Future.delayed(const Duration(milliseconds: 500), () async {
      context.goNamed(RouteLocation.login);
    });
  }
}
