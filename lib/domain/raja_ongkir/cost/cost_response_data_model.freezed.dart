// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cost_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostResponseDataModel _$CostResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _CostResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$CostResponseDataModel {
  @JsonKey(name: 'origin_details')
  CityDataModel? get originDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_details')
  CityDataModel? get destinationDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<ResultModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostResponseDataModelCopyWith<CostResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostResponseDataModelCopyWith<$Res> {
  factory $CostResponseDataModelCopyWith(CostResponseDataModel value,
          $Res Function(CostResponseDataModel) then) =
      _$CostResponseDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'origin_details') CityDataModel? originDetails,
      @JsonKey(name: 'destination_details') CityDataModel? destinationDetails,
      @JsonKey(name: 'results') List<ResultModel>? results});

  $CityDataModelCopyWith<$Res>? get originDetails;
  $CityDataModelCopyWith<$Res>? get destinationDetails;
}

/// @nodoc
class _$CostResponseDataModelCopyWithImpl<$Res>
    implements $CostResponseDataModelCopyWith<$Res> {
  _$CostResponseDataModelCopyWithImpl(this._value, this._then);

  final CostResponseDataModel _value;
  // ignore: unused_field
  final $Res Function(CostResponseDataModel) _then;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>?,
    ));
  }

  @override
  $CityDataModelCopyWith<$Res>? get originDetails {
    if (_value.originDetails == null) {
      return null;
    }

    return $CityDataModelCopyWith<$Res>(_value.originDetails!, (value) {
      return _then(_value.copyWith(originDetails: value));
    });
  }

  @override
  $CityDataModelCopyWith<$Res>? get destinationDetails {
    if (_value.destinationDetails == null) {
      return null;
    }

    return $CityDataModelCopyWith<$Res>(_value.destinationDetails!, (value) {
      return _then(_value.copyWith(destinationDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_CostResponseDataModelCopyWith<$Res>
    implements $CostResponseDataModelCopyWith<$Res> {
  factory _$$_CostResponseDataModelCopyWith(_$_CostResponseDataModel value,
          $Res Function(_$_CostResponseDataModel) then) =
      __$$_CostResponseDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'origin_details') CityDataModel? originDetails,
      @JsonKey(name: 'destination_details') CityDataModel? destinationDetails,
      @JsonKey(name: 'results') List<ResultModel>? results});

  @override
  $CityDataModelCopyWith<$Res>? get originDetails;
  @override
  $CityDataModelCopyWith<$Res>? get destinationDetails;
}

/// @nodoc
class __$$_CostResponseDataModelCopyWithImpl<$Res>
    extends _$CostResponseDataModelCopyWithImpl<$Res>
    implements _$$_CostResponseDataModelCopyWith<$Res> {
  __$$_CostResponseDataModelCopyWithImpl(_$_CostResponseDataModel _value,
      $Res Function(_$_CostResponseDataModel) _then)
      : super(_value, (v) => _then(v as _$_CostResponseDataModel));

  @override
  _$_CostResponseDataModel get _value =>
      super._value as _$_CostResponseDataModel;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_CostResponseDataModel(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as CityDataModel?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostResponseDataModel implements _CostResponseDataModel {
  _$_CostResponseDataModel(
      {@JsonKey(name: 'origin_details')
          this.originDetails,
      @JsonKey(name: 'destination_details')
          this.destinationDetails,
      @JsonKey(name: 'results')
          final List<ResultModel>? results = const <ResultModel>[]})
      : _results = results;

  factory _$_CostResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostResponseDataModelFromJson(json);

  @override
  @JsonKey(name: 'origin_details')
  final CityDataModel? originDetails;
  @override
  @JsonKey(name: 'destination_details')
  final CityDataModel? destinationDetails;
  final List<ResultModel>? _results;
  @override
  @JsonKey(name: 'results')
  List<ResultModel>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CostResponseDataModel(originDetails: $originDetails, destinationDetails: $destinationDetails, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostResponseDataModel &&
            const DeepCollectionEquality()
                .equals(other.originDetails, originDetails) &&
            const DeepCollectionEquality()
                .equals(other.destinationDetails, destinationDetails) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(originDetails),
      const DeepCollectionEquality().hash(destinationDetails),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_CostResponseDataModelCopyWith<_$_CostResponseDataModel> get copyWith =>
      __$$_CostResponseDataModelCopyWithImpl<_$_CostResponseDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostResponseDataModelToJson(
      this,
    );
  }
}

abstract class _CostResponseDataModel implements CostResponseDataModel {
  factory _CostResponseDataModel(
      {@JsonKey(name: 'origin_details')
          final CityDataModel? originDetails,
      @JsonKey(name: 'destination_details')
          final CityDataModel? destinationDetails,
      @JsonKey(name: 'results')
          final List<ResultModel>? results}) = _$_CostResponseDataModel;

  factory _CostResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$_CostResponseDataModel.fromJson;

  @override
  @JsonKey(name: 'origin_details')
  CityDataModel? get originDetails;
  @override
  @JsonKey(name: 'destination_details')
  CityDataModel? get destinationDetails;
  @override
  @JsonKey(name: 'results')
  List<ResultModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_CostResponseDataModelCopyWith<_$_CostResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
