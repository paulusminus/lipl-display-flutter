// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LiplDisplay _$LiplDisplayFromJson(Map<String, dynamic> json) {
  return _LiplDisplay.fromJson(json);
}

/// @nodoc
mixin _$LiplDisplay {
  String get text => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get dark => throw _privateConstructorUsedError;
  double get fontSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiplDisplayCopyWith<LiplDisplay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiplDisplayCopyWith<$Res> {
  factory $LiplDisplayCopyWith(
          LiplDisplay value, $Res Function(LiplDisplay) then) =
      _$LiplDisplayCopyWithImpl<$Res, LiplDisplay>;
  @useResult
  $Res call({String text, String status, bool dark, double fontSize});
}

/// @nodoc
class _$LiplDisplayCopyWithImpl<$Res, $Val extends LiplDisplay>
    implements $LiplDisplayCopyWith<$Res> {
  _$LiplDisplayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? status = null,
    Object? dark = null,
    Object? fontSize = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as bool,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiplDisplayImplCopyWith<$Res>
    implements $LiplDisplayCopyWith<$Res> {
  factory _$$LiplDisplayImplCopyWith(
          _$LiplDisplayImpl value, $Res Function(_$LiplDisplayImpl) then) =
      __$$LiplDisplayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String status, bool dark, double fontSize});
}

/// @nodoc
class __$$LiplDisplayImplCopyWithImpl<$Res>
    extends _$LiplDisplayCopyWithImpl<$Res, _$LiplDisplayImpl>
    implements _$$LiplDisplayImplCopyWith<$Res> {
  __$$LiplDisplayImplCopyWithImpl(
      _$LiplDisplayImpl _value, $Res Function(_$LiplDisplayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? status = null,
    Object? dark = null,
    Object? fontSize = null,
  }) {
    return _then(_$LiplDisplayImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as bool,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiplDisplayImpl extends _LiplDisplay {
  const _$LiplDisplayImpl(
      {required this.text,
      required this.status,
      required this.dark,
      required this.fontSize})
      : super._();

  factory _$LiplDisplayImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiplDisplayImplFromJson(json);

  @override
  final String text;
  @override
  final String status;
  @override
  final bool dark;
  @override
  final double fontSize;

  @override
  String toString() {
    return 'LiplDisplay(text: $text, status: $status, dark: $dark, fontSize: $fontSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiplDisplayImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dark, dark) || other.dark == dark) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, status, dark, fontSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiplDisplayImplCopyWith<_$LiplDisplayImpl> get copyWith =>
      __$$LiplDisplayImplCopyWithImpl<_$LiplDisplayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiplDisplayImplToJson(
      this,
    );
  }
}

abstract class _LiplDisplay extends LiplDisplay {
  const factory _LiplDisplay(
      {required final String text,
      required final String status,
      required final bool dark,
      required final double fontSize}) = _$LiplDisplayImpl;
  const _LiplDisplay._() : super._();

  factory _LiplDisplay.fromJson(Map<String, dynamic> json) =
      _$LiplDisplayImpl.fromJson;

  @override
  String get text;
  @override
  String get status;
  @override
  bool get dark;
  @override
  double get fontSize;
  @override
  @JsonKey(ignore: true)
  _$$LiplDisplayImplCopyWith<_$LiplDisplayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
