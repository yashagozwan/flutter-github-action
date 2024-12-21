import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:flutter_my_alice/src/core/services/navigation_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio()..interceptors.add(getIt<AliceDioAdapter>());

  @lazySingleton
  Alice get alice {
    return Alice(
      configuration: AliceConfiguration(
        navigatorKey: getIt<NavigationService>().navigationKey,
      ),
    )..addAdapter(getIt<AliceDioAdapter>());
  }

  @lazySingleton
  GlobalKey<NavigatorState> get navigationKey => GlobalKey<NavigatorState>();

  @lazySingleton
  AliceDioAdapter get dioAlice => AliceDioAdapter();
}
