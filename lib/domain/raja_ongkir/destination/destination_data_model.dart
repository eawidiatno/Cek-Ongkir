import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_data_model.freezed.dart';
part 'destination_data_model.g.dart';

@freezed
class DestinationDataModel with _$DestinationDataModel {
  factory DestinationDataModel({
    @Default("") @JsonKey(name: 'city_id') String? cityId,
    @Default("") @JsonKey(name: 'province_id') String? provinceId,
    @Default("") @JsonKey(name: 'province') String? province,
    @Default("") @JsonKey(name: 'type') String? type,
    @Default("") @JsonKey(name: 'city_name') String? cityName,
    @Default("") @JsonKey(name: 'postal_code') String? postalCode,
  }) = _DestinationDataModel;

  factory DestinationDataModel.fromJson(Map<String, dynamic> json) =>
      _$DestinationDataModelFromJson(json);
}
