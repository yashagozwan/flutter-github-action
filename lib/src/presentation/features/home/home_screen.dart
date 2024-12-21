import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:flutter_my_alice/src/core/services/navigation_service.dart';
import 'package:flutter_my_alice/src/presentation/features/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            ElevatedButton(
              onPressed: () {
                getIt<NavigationService>().push(
                  BlocProvider(
                    create: (context) => getIt<RegistrationBloc>(),
                    child: const RegistrationScreen(),
                  ),
                );
              },
              child: const Text('Registration'),
            ),
            ElevatedButton(
              onPressed: () {
                getIt<Alice>().showInspector();
              },
              child: const Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
