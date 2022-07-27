// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cost_request_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostRequestDataModel _$CostRequestDataModelFromJson(Map<String, dynamic> json) {
  return _CostRequestDataModel.fromJson(json);
}

/// @nodoc
mixin _$CostRequestDataModel {
  int get origin => throw _privateConstructorUsedError;
  int get destination => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get courier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostRequestDataModelCopyWith<CostRequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostRequestDataModelCopyWith<$Res> {
  factory $CostRequestDataModelCopyWith(CostRequestDataModel value,
          $Res Function(CostRequestDataModel) then) =
      _$CostRequestDataModelCopyWithImpl<$Res>;
  $Res call({int origin, int destination, int weight, String courier});
}

/// @nodoc
class _$CostRequestDataModelCopyWithImpl<$Res>
    implements $CostRequestDataModelCopyWith<$Res> {
  _$CostRequestDataModelCopyWithImpl(this._value, this._then);

  final CostRequestDataModel _value;
  // ignore: unused_field
  final $Res Function(CostRequestDataModel) _then;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as int,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CostRequestDataModelCopyWith<$Res>
    implements $CostRequestDataModelCopyWith<$Res> {
  factory _$$_CostRequestDataModelCopyWith(_$_CostRequestDataModel value,
          $Res Function(_$_CostRequestDataModel) then) =
      __$$_CostRequestDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int origin, int destination, int weight, String courier});
}

/// @nodoc
class __$$_CostRequestDataModelCopyWithImpl<$Res>
    extends _$CostRequestDataModelCopyWithImpl<$Res>
    implements _$$_CostRequestDataModelCopyWith<$Res> {
  __$$_CostRequestDataModelCopyWithImpl(_$_CostRequestDataModel _value,
      $Res Function(_$_CostRequestDataModel) _then)
      : super(_value, (v) => _then(v as _$_CostRequestDataModel));

  @override
  _$_CostRequestDataModel get _value => super._value as _$_CostRequestDataModel;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(_$_CostRequestDataModel(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as int,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostRequestDataModel implements _CostRequestDataModel {
  _$_CostRequestDataModel(
      {this.origin = 0,
      this.destination = 0,
      this.weight = 0,
      this.courier = ""});

  factory _$_CostRequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostRequestDataModelFromJson(json);

  @override
  @JsonKey()
  final int origin;
  @override
  @JsonKey()
  final int destination;
  @override
  @JsonKey()
  final int weight;
  @override
  @JsonKey()
  final String courier;

  @override
  String toString() {
    return 'CostRequestDataModel(origin: $origin, destination: $destination, weight: $weight, courier: $courier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostRequestDataModel &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.courier, courier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(courier));

  @JsonKey(ignore: true)
  @override
  _$$_CostRequestDataModelCopyWith<_$_CostRequestDataModel> get copyWith =>
      __$$_CostRequestDataModelCopyWithImpl<_$_CostRequestDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostRequestDataModelToJson(
      this,
    );
  }
}

abstract class _CostRequestDataModel implements CostRequestDataModel {
  factory _CostRequestDataModel(
      {final int origin,
      final int destination,
      final int weight,
      final String courier}) = _$_CostRequestDataModel;

  factory _CostRequestDataModel.fromJson(Map<String, dynamic> json) =
      _$_CostRequestDataModel.fromJson;

  @override
  int get origin;
  @override
  int get destination;
  @override
  int get weight;
  @override
  String get courier;
  @override
  @JsonKey(ignore: true)
  _$$_CostRequestDataModelCopyWith<_$_CostRequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
