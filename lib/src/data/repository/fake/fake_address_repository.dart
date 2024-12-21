import 'package:dartz/dartz.dart';
import 'package:flutter_my_alice/src/domain/model/address_model.dart';
import 'package:flutter_my_alice/src/domain/model/failure_model.dart';
import 'package:flutter_my_alice/src/domain/repository/i_address_repository.dart';
import 'package:injectable/injectable.dart';

@test
@LazySingleton(as: IAddressRepository)
class FakeAddressRepository implements IAddressRepository {
  @override
  Future<Either<FailureModel, List<AddressModel>>> geCities(
    String provinceId,
  ) async {
    final data = [
      {'id': '63', 'text': 'Kabupaten Bandung'},
      {'id': '65', 'text': 'Kabupaten Bandung Barat'},
      {'id': '67', 'text': 'Kabupaten Bekasi'},
    ];

    return right(data.map(AddressModel.fromJson).toList());
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getDistricts(
    String cityId,
  ) async {
    // TODO: implement getDistricts
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getProvinces() async {
    final data = [
      {'id': '9', 'text': 'Jawa Barat'},
      {'id': '10', 'text': 'Jawa Tengah'},
      {'id': '11', 'text': 'Jawa Timur'},
    ];

    return right(data.map(AddressModel.fromJson).toList());
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getSubDistricts(
    String districtId,
  ) async {
    // TODO: implement getSubDistricts
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureModel, List<AddressModel>>> getZipCode(
    String cityId,
    String districtId,
  ) async {
    // TODO: implement getZipCode
    throw UnimplementedError();
  }
}
