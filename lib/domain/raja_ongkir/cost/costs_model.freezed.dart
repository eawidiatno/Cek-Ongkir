// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'costs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostsModel _$CostsModelFromJson(Map<String, dynamic> json) {
  return _CostsModel.fromJson(json);
}

/// @nodoc
mixin _$CostsModel {
  String? get service => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<CostModel>? get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostsModelCopyWith<CostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostsModelCopyWith<$Res> {
  factory $CostsModelCopyWith(
          CostsModel value, $Res Function(CostsModel) then) =
      _$CostsModelCopyWithImpl<$Res>;
  $Res call({String? service, String? description, List<CostModel>? cost});
}

/// @nodoc
class _$CostsModelCopyWithImpl<$Res> implements $CostsModelCopyWith<$Res> {
  _$CostsModelCopyWithImpl(this._value, this._then);

  final CostsModel _value;
  // ignore: unused_field
  final $Res Function(CostsModel) _then;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<CostModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CostsModelCopyWith<$Res>
    implements $CostsModelCopyWith<$Res> {
  factory _$$_CostsModelCopyWith(
          _$_CostsModel value, $Res Function(_$_CostsModel) then) =
      __$$_CostsModelCopyWithImpl<$Res>;
  @override
  $Res call({String? service, String? description, List<CostModel>? cost});
}

/// @nodoc
class __$$_CostsModelCopyWithImpl<$Res> extends _$CostsModelCopyWithImpl<$Res>
    implements _$$_CostsModelCopyWith<$Res> {
  __$$_CostsModelCopyWithImpl(
      _$_CostsModel _value, $Res Function(_$_CostsModel) _then)
      : super(_value, (v) => _then(v as _$_CostsModel));

  @override
  _$_CostsModel get _value => super._value as _$_CostsModel;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$_CostsModel(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value._cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<CostModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostsModel implements _CostsModel {
  _$_CostsModel(
      {this.service = "",
      this.description = "",
      final List<CostModel>? cost = const <CostModel>[]})
      : _cost = cost;

  factory _$_CostsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostsModelFromJson(json);

  @override
  @JsonKey()
  final String? service;
  @override
  @JsonKey()
  final String? description;
  final List<CostModel>? _cost;
  @override
  @JsonKey()
  List<CostModel>? get cost {
    final value = _cost;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CostsModel(service: $service, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostsModel &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._cost, _cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_cost));

  @JsonKey(ignore: true)
  @override
  _$$_CostsModelCopyWith<_$_CostsModel> get copyWith =>
      __$$_CostsModelCopyWithImpl<_$_CostsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostsModelToJson(
      this,
    );
  }
}

abstract class _CostsModel implements CostsModel {
  factory _CostsModel(
      {final String? service,
      final String? description,
      final List<CostModel>? cost}) = _$_CostsModel;

  factory _CostsModel.fromJson(Map<String, dynamic> json) =
      _$_CostsModel.fromJson;

  @override
  String? get service;
  @override
  String? get description;
  @override
  List<CostModel>? get cost;
  @override
  @JsonKey(ignore: true)
  _$$_CostsModelCopyWith<_$_CostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
