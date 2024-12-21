import 'package:flutter_my_alice/src/core/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String environment) async =>
    getIt.init(environment: environment);
