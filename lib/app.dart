import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'config/config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final routeConfig = context.watch<RouterProvider>();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (ctx, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: context.l10n.app_name,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerDelegate: routeConfig.getGoRouter.routerDelegate,
          routeInformationParser:
              routeConfig.getGoRouter.routeInformationParser,
          routeInformationProvider:
              routeConfig.getGoRouter.routeInformationProvider,
        );
      },
    );
  }
}
