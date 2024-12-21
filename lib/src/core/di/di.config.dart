// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_my_alice/src/core/module/register_module.dart' as _i410;
import 'package:flutter_my_alice/src/core/module/remote_data_source_module.dart'
    as _i164;
import 'package:flutter_my_alice/src/data/repository/dev/dev_address_repository.dart'
    as _i578;
import 'package:flutter_my_alice/src/data/repository/fake/fake_address_repository.dart'
    as _i446;
import 'package:flutter_my_alice/src/data/source/remote/address_remote_data_source.dart'
    as _i928;
import 'package:flutter_my_alice/src/domain/repository/i_address_repository.dart'
    as _i683;
import 'package:flutter_my_alice/src/presentation/features/registration/bloc/registration_bloc.dart'
    as _i496;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _test = 'test';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final remoteDataSourceModule = _$RemoteDataSourceModule();
    gh.factory<_i496.RegistrationBloc>(() => _i496.RegistrationBloc());
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.dio,
      registerFor: {_dev},
    );
    gh.lazySingleton<_i928.AddressRemoteDataSource>(
      () => remoteDataSourceModule.addressRemoteDataSource,
      registerFor: {_dev},
    );
    gh.lazySingleton<_i683.IAddressRepository>(
      () => _i446.FakeAddressRepository(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i683.IAddressRepository>(
      () => _i578.DevAddressRepository(gh<_i928.AddressRemoteDataSource>()),
      registerFor: {_dev},
    );
    return this;
  }
}

class _$RegisterModule extends _i410.RegisterModule {}

class _$RemoteDataSourceModule extends _i164.RemoteDataSourceModule {}
