import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_alice/src/presentation/features/registration/index.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RegistrationBloc>(context)
      ..add(RegistrationEvent.initial());

    return const Scaffold();
  }
}
