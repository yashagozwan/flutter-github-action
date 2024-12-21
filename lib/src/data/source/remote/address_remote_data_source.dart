import 'package:dio/dio.dart';
import 'package:flutter_my_alice/src/domain/model/address_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'address_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://alamat.thecloudalert.com')
abstract class AddressRemoteDataSource {
  factory AddressRemoteDataSource(
    Dio dio, {
    String? baseUrl,
  }) = _AddressRemoteDataSource;

  @GET('/api/provinsi/get')
  Future<HttpResponse<AddressResponseModel>> getProvinces();

  @GET('/api/kabkota/get/')
  Future<HttpResponse<AddressResponseModel>> getCities(
    @Query('d_provinsi_id') String provinceId,
  );
}
