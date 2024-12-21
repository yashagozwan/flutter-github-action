import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @dev
  @lazySingleton
  Dio get dio => Dio();
}
