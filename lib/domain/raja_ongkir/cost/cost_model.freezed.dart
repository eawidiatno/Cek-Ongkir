// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cost_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CostModel _$CostModelFromJson(Map<String, dynamic> json) {
  return _CostModel.fromJson(json);
}

/// @nodoc
mixin _$CostModel {
  int? get value => throw _privateConstructorUsedError;
  String? get etd => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostModelCopyWith<CostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostModelCopyWith<$Res> {
  factory $CostModelCopyWith(CostModel value, $Res Function(CostModel) then) =
      _$CostModelCopyWithImpl<$Res>;
  $Res call({int? value, String? etd, String? note});
}

/// @nodoc
class _$CostModelCopyWithImpl<$Res> implements $CostModelCopyWith<$Res> {
  _$CostModelCopyWithImpl(this._value, this._then);

  final CostModel _value;
  // ignore: unused_field
  final $Res Function(CostModel) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CostModelCopyWith<$Res> implements $CostModelCopyWith<$Res> {
  factory _$$_CostModelCopyWith(
          _$_CostModel value, $Res Function(_$_CostModel) then) =
      __$$_CostModelCopyWithImpl<$Res>;
  @override
  $Res call({int? value, String? etd, String? note});
}

/// @nodoc
class __$$_CostModelCopyWithImpl<$Res> extends _$CostModelCopyWithImpl<$Res>
    implements _$$_CostModelCopyWith<$Res> {
  __$$_CostModelCopyWithImpl(
      _$_CostModel _value, $Res Function(_$_CostModel) _then)
      : super(_value, (v) => _then(v as _$_CostModel));

  @override
  _$_CostModel get _value => super._value as _$_CostModel;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_CostModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostModel implements _CostModel {
  _$_CostModel({this.value = 0, this.etd = "", this.note = ""});

  factory _$_CostModel.fromJson(Map<String, dynamic> json) =>
      _$$_CostModelFromJson(json);

  @override
  @JsonKey()
  final int? value;
  @override
  @JsonKey()
  final String? etd;
  @override
  @JsonKey()
  final String? note;

  @override
  String toString() {
    return 'CostModel(value: $value, etd: $etd, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostModel &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.etd, etd) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(etd),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$_CostModelCopyWith<_$_CostModel> get copyWith =>
      __$$_CostModelCopyWithImpl<_$_CostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostModelToJson(
      this,
    );
  }
}

abstract class _CostModel implements CostModel {
  factory _CostModel(
      {final int? value, final String? etd, final String? note}) = _$_CostModel;

  factory _CostModel.fromJson(Map<String, dynamic> json) =
      _$_CostModel.fromJson;

  @override
  int? get value;
  @override
  String? get etd;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_CostModelCopyWith<_$_CostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
