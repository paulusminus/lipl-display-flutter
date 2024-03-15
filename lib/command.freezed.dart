// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GattMessageCommand _$GattMessageCommandFromJson(Map<String, dynamic> json) {
  return _GattMessageCommand.fromJson(json);
}

/// @nodoc
mixin _$GattMessageCommand {
  Command get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GattMessageCommandCopyWith<GattMessageCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GattMessageCommandCopyWith<$Res> {
  factory $GattMessageCommandCopyWith(
          GattMessageCommand value, $Res Function(GattMessageCommand) then) =
      _$GattMessageCommandCopyWithImpl<$Res, GattMessageCommand>;
  @useResult
  $Res call({Command command});
}

/// @nodoc
class _$GattMessageCommandCopyWithImpl<$Res, $Val extends GattMessageCommand>
    implements $GattMessageCommandCopyWith<$Res> {
  _$GattMessageCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
  }) {
    return _then(_value.copyWith(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as Command,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GattMessageCommandImplCopyWith<$Res>
    implements $GattMessageCommandCopyWith<$Res> {
  factory _$$GattMessageCommandImplCopyWith(_$GattMessageCommandImpl value,
          $Res Function(_$GattMessageCommandImpl) then) =
      __$$GattMessageCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Command command});
}

/// @nodoc
class __$$GattMessageCommandImplCopyWithImpl<$Res>
    extends _$GattMessageCommandCopyWithImpl<$Res, _$GattMessageCommandImpl>
    implements _$$GattMessageCommandImplCopyWith<$Res> {
  __$$GattMessageCommandImplCopyWithImpl(_$GattMessageCommandImpl _value,
      $Res Function(_$GattMessageCommandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
  }) {
    return _then(_$GattMessageCommandImpl(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as Command,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GattMessageCommandImpl implements _GattMessageCommand {
  const _$GattMessageCommandImpl({required this.command});

  factory _$GattMessageCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$GattMessageCommandImplFromJson(json);

  @override
  final Command command;

  @override
  String toString() {
    return 'GattMessageCommand(command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GattMessageCommandImpl &&
            (identical(other.command, command) || other.command == command));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GattMessageCommandImplCopyWith<_$GattMessageCommandImpl> get copyWith =>
      __$$GattMessageCommandImplCopyWithImpl<_$GattMessageCommandImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GattMessageCommandImplToJson(
      this,
    );
  }
}

abstract class _GattMessageCommand implements GattMessageCommand {
  const factory _GattMessageCommand({required final Command command}) =
      _$GattMessageCommandImpl;

  factory _GattMessageCommand.fromJson(Map<String, dynamic> json) =
      _$GattMessageCommandImpl.fromJson;

  @override
  Command get command;
  @override
  @JsonKey(ignore: true)
  _$$GattMessageCommandImplCopyWith<_$GattMessageCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
