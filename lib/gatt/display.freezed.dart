// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LiplDisplay {

 String get text; String get status; bool get dark; double get fontSize;
/// Create a copy of LiplDisplay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiplDisplayCopyWith<LiplDisplay> get copyWith => _$LiplDisplayCopyWithImpl<LiplDisplay>(this as LiplDisplay, _$identity);

  /// Serializes this LiplDisplay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiplDisplay;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiplDisplay&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.dark, _this.dark) || other.dark == _this.dark)&&(identical(other.fontSize, _this.fontSize) || other.fontSize == _this.fontSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiplDisplay;
  return Object.hash(runtimeType,_this.text,_this.status,_this.dark,_this.fontSize);
}

@override
String toString() {
  final _this = this as LiplDisplay;
  return 'LiplDisplay(text: ${_this.text}, status: ${_this.status}, dark: ${_this.dark}, fontSize: ${_this.fontSize})';
}


}

/// @nodoc
abstract mixin class $LiplDisplayCopyWith<$Res>  {
  factory $LiplDisplayCopyWith(LiplDisplay value, $Res Function(LiplDisplay) _then) = _$LiplDisplayCopyWithImpl;
@useResult
$Res call({
 String text, String status, bool dark, double fontSize
});




}
/// @nodoc
class _$LiplDisplayCopyWithImpl<$Res>
    implements $LiplDisplayCopyWith<$Res> {
  _$LiplDisplayCopyWithImpl(this._self, this._then);

  final LiplDisplay _self;
  final $Res Function(LiplDisplay) _then;

/// Create a copy of LiplDisplay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? status = null,Object? dark = null,Object? fontSize = null,}) {
  return _then(LiplDisplay(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dark: null == dark ? _self.dark : dark // ignore: cast_nullable_to_non_nullable
as bool,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LiplDisplay].
extension LiplDisplayPatterns on LiplDisplay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiplDisplay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiplDisplay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiplDisplay value)  $default,){
final _that = this;
switch (_that) {
case _LiplDisplay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiplDisplay value)?  $default,){
final _that = this;
switch (_that) {
case _LiplDisplay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String status,  bool dark,  double fontSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiplDisplay() when $default != null:
return $default(_that.text,_that.status,_that.dark,_that.fontSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String status,  bool dark,  double fontSize)  $default,) {final _that = this;
switch (_that) {
case _LiplDisplay():
return $default(_that.text,_that.status,_that.dark,_that.fontSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String status,  bool dark,  double fontSize)?  $default,) {final _that = this;
switch (_that) {
case _LiplDisplay() when $default != null:
return $default(_that.text,_that.status,_that.dark,_that.fontSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiplDisplay extends LiplDisplay {
  const _LiplDisplay({required this.text, required this.status, required this.dark, required this.fontSize}): super._();
  factory _LiplDisplay.fromJson(Map<String, dynamic> json) => _$LiplDisplayFromJson(json);

@override final  String text;
@override final  String status;
@override final  bool dark;
@override final  double fontSize;

/// Create a copy of LiplDisplay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiplDisplayCopyWith<_LiplDisplay> get copyWith => __$LiplDisplayCopyWithImpl<_LiplDisplay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiplDisplayToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiplDisplay&&(identical(other.text, text) || other.text == text)&&(identical(other.status, status) || other.status == status)&&(identical(other.dark, dark) || other.dark == dark)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,text,status,dark,fontSize);
}

@override
String toString() {
    return 'LiplDisplay(text: $text, status: $status, dark: $dark, fontSize: $fontSize)';
}


}

/// @nodoc
abstract mixin class _$LiplDisplayCopyWith<$Res> implements $LiplDisplayCopyWith<$Res> {
  factory _$LiplDisplayCopyWith(_LiplDisplay value, $Res Function(_LiplDisplay) _then) = __$LiplDisplayCopyWithImpl;
@override @useResult
$Res call({
 String text, String status, bool dark, double fontSize
});




}
/// @nodoc
class __$LiplDisplayCopyWithImpl<$Res>
    implements _$LiplDisplayCopyWith<$Res> {
  __$LiplDisplayCopyWithImpl(this._self, this._then);

  final _LiplDisplay _self;
  final $Res Function(_LiplDisplay) _then;

/// Create a copy of LiplDisplay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? status = null,Object? dark = null,Object? fontSize = null,}) {
  return _then(_LiplDisplay(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dark: null == dark ? _self.dark : dark // ignore: cast_nullable_to_non_nullable
as bool,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
