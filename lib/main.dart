import 'package:flutter/material.dart';
import 'package:flutter_my_alice/src/app.dart';
import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:injectable/injectable.dart';

void main() async {
  await configureDependencies(Environment.dev);
  runApp(const App());
}
