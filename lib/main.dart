import 'package:flutter/material.dart';
import 'package:movies_flutter/config/router.dart';
import 'package:movies_flutter/services/global_locator_service.dart';

void main() {
  globalSetupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
