import 'package:dartz/dartz.dart';
import 'package:flutter_my_alice/src/domain/model/address_model.dart';
import 'package:flutter_my_alice/src/domain/model/failure_model.dart';
import 'package:flutter_my_alice/src/domain/repository/i_address_repository.dart';
import 'package:injectable/injectable.dart';

@test
@LazySingleton(as: IAddressRepository)
class FakeAddressRepository implements IAddressRepository {
  @override
  Future<Either<FailureModel, List<AddressModel>>> geCities(String provinceId) {
    // TODO: implement geCities
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getDistricts(String cityId) {
    // TODO: implement getDistricts
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getProvinces() {
    // TODO: implement getProvinces
    throw UnimplementedError();
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
