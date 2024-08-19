// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GattMessageStatus _$GattMessageStatusFromJson(Map<String, dynamic> json) {
  return _GattMessageStatus.fromJson(json);
}

/// @nodoc
mixin _$GattMessageStatus {
  String get status => throw _privateConstructorUsedError;

  /// Serializes this GattMessageStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GattMessageStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GattMessageStatusCopyWith<GattMessageStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GattMessageStatusCopyWith<$Res> {
  factory $GattMessageStatusCopyWith(
          GattMessageStatus value, $Res Function(GattMessageStatus) then) =
      _$GattMessageStatusCopyWithImpl<$Res, GattMessageStatus>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$GattMessageStatusCopyWithImpl<$Res, $Val extends GattMessageStatus>
    implements $GattMessageStatusCopyWith<$Res> {
  _$GattMessageStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GattMessageStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GattMessageStatusImplCopyWith<$Res>
    implements $GattMessageStatusCopyWith<$Res> {
  factory _$$GattMessageStatusImplCopyWith(_$GattMessageStatusImpl value,
          $Res Function(_$GattMessageStatusImpl) then) =
      __$$GattMessageStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$GattMessageStatusImplCopyWithImpl<$Res>
    extends _$GattMessageStatusCopyWithImpl<$Res, _$GattMessageStatusImpl>
    implements _$$GattMessageStatusImplCopyWith<$Res> {
  __$$GattMessageStatusImplCopyWithImpl(_$GattMessageStatusImpl _value,
      $Res Function(_$GattMessageStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of GattMessageStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GattMessageStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GattMessageStatusImpl implements _GattMessageStatus {
  const _$GattMessageStatusImpl({required this.status});

  factory _$GattMessageStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$GattMessageStatusImplFromJson(json);

  @override
  final String status;

  @override
  String toString() {
    return 'GattMessageStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GattMessageStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of GattMessageStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GattMessageStatusImplCopyWith<_$GattMessageStatusImpl> get copyWith =>
      __$$GattMessageStatusImplCopyWithImpl<_$GattMessageStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GattMessageStatusImplToJson(
      this,
    );
  }
}

abstract class _GattMessageStatus implements GattMessageStatus {
  const factory _GattMessageStatus({required final String status}) =
      _$GattMessageStatusImpl;

  factory _GattMessageStatus.fromJson(Map<String, dynamic> json) =
      _$GattMessageStatusImpl.fromJson;

  @override
  String get status;

  /// Create a copy of GattMessageStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GattMessageStatusImplCopyWith<_$GattMessageStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
