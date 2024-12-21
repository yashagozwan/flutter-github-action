import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:flutter_my_alice/src/presentation/features/index.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<Alice>().getNavigatorKey(),
      home: const HomeScreen(),
    );
  }
}
