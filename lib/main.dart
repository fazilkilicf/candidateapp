import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'config/config.dart';
import 'core/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/features.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    SharedPrefs.init(),
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
  ]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<RouterProvider>(create: (_) => RouterProvider()),
        ChangeNotifierProvider<AuthController>(create: (_) => AuthController()),
      ],
      child: const App(),
    ),
  );
}
