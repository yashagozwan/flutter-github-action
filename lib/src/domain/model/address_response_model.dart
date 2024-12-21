import 'package:flutter_my_alice/src/domain/model/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_response_model.g.dart';

@JsonSerializable()
class AddressResponseModel {
  AddressResponseModel({
    this.message,
    this.status,
    this.data,
  });

  factory AddressResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseModelFromJson(json);

  final String? message;
  final int? status;
  @JsonKey(name: 'result')
  final List<AddressModel>? data;

  Map<String, dynamic> toJson() => _$AddressResponseModelToJson(this);
}
