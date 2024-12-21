import 'package:dio/dio.dart';
import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:flutter_my_alice/src/data/source/remote/address_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RemoteDataSourceModule {
  @dev
  @lazySingleton
  AddressRemoteDataSource get addressRemoteDataSource {
    return AddressRemoteDataSource(getIt<Dio>());
  }
}
