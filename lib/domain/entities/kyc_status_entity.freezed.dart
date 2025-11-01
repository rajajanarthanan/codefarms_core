// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KycStatusEntity {

 int get currentKycStep; List<String> get kycCheckPoints; int get kycCompletionPercent;
/// Create a copy of KycStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KycStatusEntityCopyWith<KycStatusEntity> get copyWith => _$KycStatusEntityCopyWithImpl<KycStatusEntity>(this as KycStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KycStatusEntity&&(identical(other.currentKycStep, currentKycStep) || other.currentKycStep == currentKycStep)&&const DeepCollectionEquality().equals(other.kycCheckPoints, kycCheckPoints)&&(identical(other.kycCompletionPercent, kycCompletionPercent) || other.kycCompletionPercent == kycCompletionPercent));
}


@override
int get hashCode => Object.hash(runtimeType,currentKycStep,const DeepCollectionEquality().hash(kycCheckPoints),kycCompletionPercent);

@override
String toString() {
  return 'KycStatusEntity(currentKycStep: $currentKycStep, kycCheckPoints: $kycCheckPoints, kycCompletionPercent: $kycCompletionPercent)';
}


}

/// @nodoc
abstract mixin class $KycStatusEntityCopyWith<$Res>  {
  factory $KycStatusEntityCopyWith(KycStatusEntity value, $Res Function(KycStatusEntity) _then) = _$KycStatusEntityCopyWithImpl;
@useResult
$Res call({
 int currentKycStep, List<String> kycCheckPoints, int kycCompletionPercent
});




}
/// @nodoc
class _$KycStatusEntityCopyWithImpl<$Res>
    implements $KycStatusEntityCopyWith<$Res> {
  _$KycStatusEntityCopyWithImpl(this._self, this._then);

  final KycStatusEntity _self;
  final $Res Function(KycStatusEntity) _then;

/// Create a copy of KycStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentKycStep = null,Object? kycCheckPoints = null,Object? kycCompletionPercent = null,}) {
  return _then(_self.copyWith(
currentKycStep: null == currentKycStep ? _self.currentKycStep : currentKycStep // ignore: cast_nullable_to_non_nullable
as int,kycCheckPoints: null == kycCheckPoints ? _self.kycCheckPoints : kycCheckPoints // ignore: cast_nullable_to_non_nullable
as List<String>,kycCompletionPercent: null == kycCompletionPercent ? _self.kycCompletionPercent : kycCompletionPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KycStatusEntity].
extension KycStatusEntityPatterns on KycStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KycStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KycStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KycStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _KycStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KycStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _KycStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentKycStep,  List<String> kycCheckPoints,  int kycCompletionPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KycStatusEntity() when $default != null:
return $default(_that.currentKycStep,_that.kycCheckPoints,_that.kycCompletionPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentKycStep,  List<String> kycCheckPoints,  int kycCompletionPercent)  $default,) {final _that = this;
switch (_that) {
case _KycStatusEntity():
return $default(_that.currentKycStep,_that.kycCheckPoints,_that.kycCompletionPercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentKycStep,  List<String> kycCheckPoints,  int kycCompletionPercent)?  $default,) {final _that = this;
switch (_that) {
case _KycStatusEntity() when $default != null:
return $default(_that.currentKycStep,_that.kycCheckPoints,_that.kycCompletionPercent);case _:
  return null;

}
}

}

/// @nodoc


class _KycStatusEntity implements KycStatusEntity {
  const _KycStatusEntity({this.currentKycStep = 0, final  List<String> kycCheckPoints = const [], this.kycCompletionPercent = 0}): _kycCheckPoints = kycCheckPoints;
  

@override@JsonKey() final  int currentKycStep;
 final  List<String> _kycCheckPoints;
@override@JsonKey() List<String> get kycCheckPoints {
  if (_kycCheckPoints is EqualUnmodifiableListView) return _kycCheckPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kycCheckPoints);
}

@override@JsonKey() final  int kycCompletionPercent;

/// Create a copy of KycStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycStatusEntityCopyWith<_KycStatusEntity> get copyWith => __$KycStatusEntityCopyWithImpl<_KycStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycStatusEntity&&(identical(other.currentKycStep, currentKycStep) || other.currentKycStep == currentKycStep)&&const DeepCollectionEquality().equals(other._kycCheckPoints, _kycCheckPoints)&&(identical(other.kycCompletionPercent, kycCompletionPercent) || other.kycCompletionPercent == kycCompletionPercent));
}


@override
int get hashCode => Object.hash(runtimeType,currentKycStep,const DeepCollectionEquality().hash(_kycCheckPoints),kycCompletionPercent);

@override
String toString() {
  return 'KycStatusEntity(currentKycStep: $currentKycStep, kycCheckPoints: $kycCheckPoints, kycCompletionPercent: $kycCompletionPercent)';
}


}

/// @nodoc
abstract mixin class _$KycStatusEntityCopyWith<$Res> implements $KycStatusEntityCopyWith<$Res> {
  factory _$KycStatusEntityCopyWith(_KycStatusEntity value, $Res Function(_KycStatusEntity) _then) = __$KycStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 int currentKycStep, List<String> kycCheckPoints, int kycCompletionPercent
});




}
/// @nodoc
class __$KycStatusEntityCopyWithImpl<$Res>
    implements _$KycStatusEntityCopyWith<$Res> {
  __$KycStatusEntityCopyWithImpl(this._self, this._then);

  final _KycStatusEntity _self;
  final $Res Function(_KycStatusEntity) _then;

/// Create a copy of KycStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentKycStep = null,Object? kycCheckPoints = null,Object? kycCompletionPercent = null,}) {
  return _then(_KycStatusEntity(
currentKycStep: null == currentKycStep ? _self.currentKycStep : currentKycStep // ignore: cast_nullable_to_non_nullable
as int,kycCheckPoints: null == kycCheckPoints ? _self._kycCheckPoints : kycCheckPoints // ignore: cast_nullable_to_non_nullable
as List<String>,kycCompletionPercent: null == kycCompletionPercent ? _self.kycCompletionPercent : kycCompletionPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
