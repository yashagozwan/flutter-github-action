import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  const AddressModel({
    required this.id,
    required this.text,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  final String? id;
  final String? text;

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
