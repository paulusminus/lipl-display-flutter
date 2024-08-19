// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GattMessagePart _$GattMessagePartFromJson(Map<String, dynamic> json) {
  return _GattMessagePart.fromJson(json);
}

/// @nodoc
mixin _$GattMessagePart {
  String get part => throw _privateConstructorUsedError;

  /// Serializes this GattMessagePart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GattMessagePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GattMessagePartCopyWith<GattMessagePart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GattMessagePartCopyWith<$Res> {
  factory $GattMessagePartCopyWith(
          GattMessagePart value, $Res Function(GattMessagePart) then) =
      _$GattMessagePartCopyWithImpl<$Res, GattMessagePart>;
  @useResult
  $Res call({String part});
}

/// @nodoc
class _$GattMessagePartCopyWithImpl<$Res, $Val extends GattMessagePart>
    implements $GattMessagePartCopyWith<$Res> {
  _$GattMessagePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GattMessagePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? part = null,
  }) {
    return _then(_value.copyWith(
      part: null == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GattMessagePartImplCopyWith<$Res>
    implements $GattMessagePartCopyWith<$Res> {
  factory _$$GattMessagePartImplCopyWith(_$GattMessagePartImpl value,
          $Res Function(_$GattMessagePartImpl) then) =
      __$$GattMessagePartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String part});
}

/// @nodoc
class __$$GattMessagePartImplCopyWithImpl<$Res>
    extends _$GattMessagePartCopyWithImpl<$Res, _$GattMessagePartImpl>
    implements _$$GattMessagePartImplCopyWith<$Res> {
  __$$GattMessagePartImplCopyWithImpl(
      _$GattMessagePartImpl _value, $Res Function(_$GattMessagePartImpl) _then)
      : super(_value, _then);

  /// Create a copy of GattMessagePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? part = null,
  }) {
    return _then(_$GattMessagePartImpl(
      part: null == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GattMessagePartImpl implements _GattMessagePart {
  const _$GattMessagePartImpl({required this.part});

  factory _$GattMessagePartImpl.fromJson(Map<String, dynamic> json) =>
      _$$GattMessagePartImplFromJson(json);

  @override
  final String part;

  @override
  String toString() {
    return 'GattMessagePart(part: $part)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GattMessagePartImpl &&
            (identical(other.part, part) || other.part == part));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, part);

  /// Create a copy of GattMessagePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GattMessagePartImplCopyWith<_$GattMessagePartImpl> get copyWith =>
      __$$GattMessagePartImplCopyWithImpl<_$GattMessagePartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GattMessagePartImplToJson(
      this,
    );
  }
}

abstract class _GattMessagePart implements GattMessagePart {
  const factory _GattMessagePart({required final String part}) =
      _$GattMessagePartImpl;

  factory _GattMessagePart.fromJson(Map<String, dynamic> json) =
      _$GattMessagePartImpl.fromJson;

  @override
  String get part;

  /// Create a copy of GattMessagePart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GattMessagePartImplCopyWith<_$GattMessagePartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
