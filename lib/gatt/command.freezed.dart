// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GattMessageCommand {

 Command get command;
/// Create a copy of GattMessageCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GattMessageCommandCopyWith<GattMessageCommand> get copyWith => _$GattMessageCommandCopyWithImpl<GattMessageCommand>(this as GattMessageCommand, _$identity);

  /// Serializes this GattMessageCommand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GattMessageCommand;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GattMessageCommand&&(identical(other.command, _this.command) || other.command == _this.command));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GattMessageCommand;
  return Object.hash(runtimeType,_this.command);
}

@override
String toString() {
  final _this = this as GattMessageCommand;
  return 'GattMessageCommand(command: ${_this.command})';
}


}

/// @nodoc
abstract mixin class $GattMessageCommandCopyWith<$Res>  {
  factory $GattMessageCommandCopyWith(GattMessageCommand value, $Res Function(GattMessageCommand) _then) = _$GattMessageCommandCopyWithImpl;
@useResult
$Res call({
 Command command
});




}
/// @nodoc
class _$GattMessageCommandCopyWithImpl<$Res>
    implements $GattMessageCommandCopyWith<$Res> {
  _$GattMessageCommandCopyWithImpl(this._self, this._then);

  final GattMessageCommand _self;
  final $Res Function(GattMessageCommand) _then;

/// Create a copy of GattMessageCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? command = null,}) {
  return _then(GattMessageCommand(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as Command,
  ));
}

}


/// Adds pattern-matching-related methods to [GattMessageCommand].
extension GattMessageCommandPatterns on GattMessageCommand {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GattMessageCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GattMessageCommand() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GattMessageCommand value)  $default,){
final _that = this;
switch (_that) {
case _GattMessageCommand():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GattMessageCommand value)?  $default,){
final _that = this;
switch (_that) {
case _GattMessageCommand() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Command command)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GattMessageCommand() when $default != null:
return $default(_that.command);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Command command)  $default,) {final _that = this;
switch (_that) {
case _GattMessageCommand():
return $default(_that.command);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Command command)?  $default,) {final _that = this;
switch (_that) {
case _GattMessageCommand() when $default != null:
return $default(_that.command);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GattMessageCommand implements GattMessageCommand {
  const _GattMessageCommand({required this.command});
  factory _GattMessageCommand.fromJson(Map<String, dynamic> json) => _$GattMessageCommandFromJson(json);

@override final  Command command;

/// Create a copy of GattMessageCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GattMessageCommandCopyWith<_GattMessageCommand> get copyWith => __$GattMessageCommandCopyWithImpl<_GattMessageCommand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GattMessageCommandToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GattMessageCommand&&(identical(other.command, command) || other.command == command));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,command);
}

@override
String toString() {
    return 'GattMessageCommand(command: $command)';
}


}

/// @nodoc
abstract mixin class _$GattMessageCommandCopyWith<$Res> implements $GattMessageCommandCopyWith<$Res> {
  factory _$GattMessageCommandCopyWith(_GattMessageCommand value, $Res Function(_GattMessageCommand) _then) = __$GattMessageCommandCopyWithImpl;
@override @useResult
$Res call({
 Command command
});




}
/// @nodoc
class __$GattMessageCommandCopyWithImpl<$Res>
    implements _$GattMessageCommandCopyWith<$Res> {
  __$GattMessageCommandCopyWithImpl(this._self, this._then);

  final _GattMessageCommand _self;
  final $Res Function(_GattMessageCommand) _then;

/// Create a copy of GattMessageCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? command = null,}) {
  return _then(_GattMessageCommand(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as Command,
  ));
}


}

// dart format on
