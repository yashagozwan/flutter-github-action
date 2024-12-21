import 'package:dartz/dartz.dart';
import 'package:flutter_my_alice/src/domain/model/address_model.dart';
import 'package:flutter_my_alice/src/domain/model/failure_model.dart';

abstract interface class IAddressRepository {
  Future<Either<FailureModel, List<AddressModel>>> getProvinces();

  Future<Either<FailureModel, List<AddressModel>>> geCities(
    String provinceId,
  );

  Future<Either<FailureModel, List<AddressModel>>> getDistricts(
    String cityId,
  );

  Future<Either<FailureModel, List<AddressModel>>> getSubDistricts(
    String districtId,
  );

  Future<Either<FailureModel, List<AddressModel>>> getZipCode(
    String cityId,
    String districtId,
  );
}
