import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_my_alice/src/data/source/remote/address_remote_data_source.dart';
import 'package:flutter_my_alice/src/domain/model/address_model.dart';
import 'package:flutter_my_alice/src/domain/model/failure_model.dart';
import 'package:flutter_my_alice/src/domain/repository/i_address_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: IAddressRepository)
class DevAddressRepository implements IAddressRepository {
  DevAddressRepository(this._remote);

  final AddressRemoteDataSource _remote;

  @override
  Future<Either<FailureModel, List<AddressModel>>> geCities(
    String provinceId,
  ) async {
    try {
      final response = await _remote.getCities(provinceId);
      return right(response.data.data ?? []);
    } on DioException catch (e) {
      return left(FailureModel(message: e.message));
    } on Exception catch (e) {
      return left(FailureModel(message: '$e'));
    }
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getDistricts(String cityId) {
    // TODO: implement getDistricts
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getProvinces() async {
    try {
      final response = await _remote.getProvinces();
      return right(response.data.data ?? []);
    } on DioException catch (e) {
      return left(FailureModel(message: e.message));
    } on Exception catch (e) {
      return left(FailureModel(message: '$e'));
    }
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getSubDistricts(
      String districtId) {
    // TODO: implement getSubDistricts
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getZipCode(
      String cityId, String districtId) {
    // TODO: implement getZipCode
    throw UnimplementedError();
  }
}
