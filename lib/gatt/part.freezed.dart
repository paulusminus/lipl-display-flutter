// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GattMessagePart {

 String get part;
/// Create a copy of GattMessagePart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GattMessagePartCopyWith<GattMessagePart> get copyWith => _$GattMessagePartCopyWithImpl<GattMessagePart>(this as GattMessagePart, _$identity);

  /// Serializes this GattMessagePart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GattMessagePart;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GattMessagePart&&(identical(other.part, _this.part) || other.part == _this.part));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GattMessagePart;
  return Object.hash(runtimeType,_this.part);
}

@override
String toString() {
  final _this = this as GattMessagePart;
  return 'GattMessagePart(part: ${_this.part})';
}


}

/// @nodoc
abstract mixin class $GattMessagePartCopyWith<$Res>  {
  factory $GattMessagePartCopyWith(GattMessagePart value, $Res Function(GattMessagePart) _then) = _$GattMessagePartCopyWithImpl;
@useResult
$Res call({
 String part
});




}
/// @nodoc
class _$GattMessagePartCopyWithImpl<$Res>
    implements $GattMessagePartCopyWith<$Res> {
  _$GattMessagePartCopyWithImpl(this._self, this._then);

  final GattMessagePart _self;
  final $Res Function(GattMessagePart) _then;

/// Create a copy of GattMessagePart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? part = null,}) {
  return _then(GattMessagePart(
part: null == part ? _self.part : part // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GattMessagePart].
extension GattMessagePartPatterns on GattMessagePart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GattMessagePart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GattMessagePart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GattMessagePart value)  $default,){
final _that = this;
switch (_that) {
case _GattMessagePart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GattMessagePart value)?  $default,){
final _that = this;
switch (_that) {
case _GattMessagePart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String part)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GattMessagePart() when $default != null:
return $default(_that.part);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String part)  $default,) {final _that = this;
switch (_that) {
case _GattMessagePart():
return $default(_that.part);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String part)?  $default,) {final _that = this;
switch (_that) {
case _GattMessagePart() when $default != null:
return $default(_that.part);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GattMessagePart implements GattMessagePart {
  const _GattMessagePart({required this.part});
  factory _GattMessagePart.fromJson(Map<String, dynamic> json) => _$GattMessagePartFromJson(json);

@override final  String part;

/// Create a copy of GattMessagePart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GattMessagePartCopyWith<_GattMessagePart> get copyWith => __$GattMessagePartCopyWithImpl<_GattMessagePart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GattMessagePartToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GattMessagePart&&(identical(other.part, part) || other.part == part));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,part);
}

@override
String toString() {
    return 'GattMessagePart(part: $part)';
}


}

/// @nodoc
abstract mixin class _$GattMessagePartCopyWith<$Res> implements $GattMessagePartCopyWith<$Res> {
  factory _$GattMessagePartCopyWith(_GattMessagePart value, $Res Function(_GattMessagePart) _then) = __$GattMessagePartCopyWithImpl;
@override @useResult
$Res call({
 String part
});




}
/// @nodoc
class __$GattMessagePartCopyWithImpl<$Res>
    implements _$GattMessagePartCopyWith<$Res> {
  __$GattMessagePartCopyWithImpl(this._self, this._then);

  final _GattMessagePart _self;
  final $Res Function(_GattMessagePart) _then;

/// Create a copy of GattMessagePart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? part = null,}) {
  return _then(_GattMessagePart(
part: null == part ? _self.part : part // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
