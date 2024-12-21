import 'package:flutter_my_alice/src/core/di/di.dart';
import 'package:flutter_my_alice/src/domain/model/address_model.dart';
import 'package:flutter_my_alice/src/domain/repository/i_address_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  group('DevAddressRepository', () {
    late final IAddressRepository addressRepository;

    setUpAll(() async {
      await configureDependencies(Environment.test);

      addressRepository = getIt<IAddressRepository>();
    });

    test('should return list of provinces when getProvinces called', () async {
      final either = await addressRepository.getProvinces();
      final provinces = either.fold(
          (_) => throw Exception('Get provinces fail'), (success) => success);

      expect(provinces, isA<List<AddressModel>>());
      expect(provinces, isNotEmpty);
    });

    test('should return list of cities when getCities called', () async {
      var either = await addressRepository.getProvinces();
      final provinces = either.fold(
          (_) => throw Exception('Get provinces fail'), (success) => success);

      expect(provinces, isA<List<AddressModel>>());
      expect(provinces, isNotEmpty);

      final province =
          provinces.where((e) => e.text == 'Jawa Barat').firstOrNull;

      if (province == null) {
        throw Exception('Search Jawa Barat fail');
      }

      either = await addressRepository.geCities(province.id ?? '');

      final cities = either.fold(
        (_) => throw Exception('Get cities failed'),
        (success) => success,
      );

      expect(cities, isNotEmpty);
    });
  });
}
