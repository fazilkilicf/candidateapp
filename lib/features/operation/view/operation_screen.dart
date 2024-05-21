// ignore_for_file: use_build_context_synchronously

import 'package:candidateapp/config/config.dart';
import 'package:candidateapp/core/core.dart';
import 'package:candidateapp/features/auth/controller/controllers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class OperationScreen extends StatefulWidget {
  static OperationScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const OperationScreen();
  const OperationScreen({super.key});

  @override
  State<OperationScreen> createState() => _OperationScreenState();
}

class _OperationScreenState extends State<OperationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: DeviceUtility.getScreenWidth(context),
          height: DeviceUtility.getScreenHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                text: "Logout",
                onPressed: () async {
                  final status = await context.read<AuthController>().logOut();
                  if (status) {
                    context.goNamed(RouteLocation.login);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
