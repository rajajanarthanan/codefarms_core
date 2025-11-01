// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_record_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentRecordEntity {

 String get userId; String get projectId; String get projectName; int get ownedStake; int get totalPayoutAmount; String get payoutAmount; DateTime get date; PaymentStatus get status; String? get comments;
/// Create a copy of PaymentRecordEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRecordEntityCopyWith<PaymentRecordEntity> get copyWith => _$PaymentRecordEntityCopyWithImpl<PaymentRecordEntity>(this as PaymentRecordEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRecordEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.projectName, projectName) || other.projectName == projectName)&&(identical(other.ownedStake, ownedStake) || other.ownedStake == ownedStake)&&(identical(other.totalPayoutAmount, totalPayoutAmount) || other.totalPayoutAmount == totalPayoutAmount)&&(identical(other.payoutAmount, payoutAmount) || other.payoutAmount == payoutAmount)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.comments, comments) || other.comments == comments));
}


@override
int get hashCode => Object.hash(runtimeType,userId,projectId,projectName,ownedStake,totalPayoutAmount,payoutAmount,date,status,comments);

@override
String toString() {
  return 'PaymentRecordEntity(userId: $userId, projectId: $projectId, projectName: $projectName, ownedStake: $ownedStake, totalPayoutAmount: $totalPayoutAmount, payoutAmount: $payoutAmount, date: $date, status: $status, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $PaymentRecordEntityCopyWith<$Res>  {
  factory $PaymentRecordEntityCopyWith(PaymentRecordEntity value, $Res Function(PaymentRecordEntity) _then) = _$PaymentRecordEntityCopyWithImpl;
@useResult
$Res call({
 String userId, String projectId, String projectName, int ownedStake, int totalPayoutAmount, String payoutAmount, DateTime date, PaymentStatus status, String? comments
});




}
/// @nodoc
class _$PaymentRecordEntityCopyWithImpl<$Res>
    implements $PaymentRecordEntityCopyWith<$Res> {
  _$PaymentRecordEntityCopyWithImpl(this._self, this._then);

  final PaymentRecordEntity _self;
  final $Res Function(PaymentRecordEntity) _then;

/// Create a copy of PaymentRecordEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? projectId = null,Object? projectName = null,Object? ownedStake = null,Object? totalPayoutAmount = null,Object? payoutAmount = null,Object? date = null,Object? status = null,Object? comments = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,projectName: null == projectName ? _self.projectName : projectName // ignore: cast_nullable_to_non_nullable
as String,ownedStake: null == ownedStake ? _self.ownedStake : ownedStake // ignore: cast_nullable_to_non_nullable
as int,totalPayoutAmount: null == totalPayoutAmount ? _self.totalPayoutAmount : totalPayoutAmount // ignore: cast_nullable_to_non_nullable
as int,payoutAmount: null == payoutAmount ? _self.payoutAmount : payoutAmount // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRecordEntity].
extension PaymentRecordEntityPatterns on PaymentRecordEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRecordEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRecordEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRecordEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRecordEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRecordEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRecordEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String projectId,  String projectName,  int ownedStake,  int totalPayoutAmount,  String payoutAmount,  DateTime date,  PaymentStatus status,  String? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRecordEntity() when $default != null:
return $default(_that.userId,_that.projectId,_that.projectName,_that.ownedStake,_that.totalPayoutAmount,_that.payoutAmount,_that.date,_that.status,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String projectId,  String projectName,  int ownedStake,  int totalPayoutAmount,  String payoutAmount,  DateTime date,  PaymentStatus status,  String? comments)  $default,) {final _that = this;
switch (_that) {
case _PaymentRecordEntity():
return $default(_that.userId,_that.projectId,_that.projectName,_that.ownedStake,_that.totalPayoutAmount,_that.payoutAmount,_that.date,_that.status,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String projectId,  String projectName,  int ownedStake,  int totalPayoutAmount,  String payoutAmount,  DateTime date,  PaymentStatus status,  String? comments)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRecordEntity() when $default != null:
return $default(_that.userId,_that.projectId,_that.projectName,_that.ownedStake,_that.totalPayoutAmount,_that.payoutAmount,_that.date,_that.status,_that.comments);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentRecordEntity implements PaymentRecordEntity {
  const _PaymentRecordEntity({required this.userId, required this.projectId, required this.projectName, required this.ownedStake, required this.totalPayoutAmount, required this.payoutAmount, required this.date, required this.status, this.comments});
  

@override final  String userId;
@override final  String projectId;
@override final  String projectName;
@override final  int ownedStake;
@override final  int totalPayoutAmount;
@override final  String payoutAmount;
@override final  DateTime date;
@override final  PaymentStatus status;
@override final  String? comments;

/// Create a copy of PaymentRecordEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRecordEntityCopyWith<_PaymentRecordEntity> get copyWith => __$PaymentRecordEntityCopyWithImpl<_PaymentRecordEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRecordEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.projectName, projectName) || other.projectName == projectName)&&(identical(other.ownedStake, ownedStake) || other.ownedStake == ownedStake)&&(identical(other.totalPayoutAmount, totalPayoutAmount) || other.totalPayoutAmount == totalPayoutAmount)&&(identical(other.payoutAmount, payoutAmount) || other.payoutAmount == payoutAmount)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.comments, comments) || other.comments == comments));
}


@override
int get hashCode => Object.hash(runtimeType,userId,projectId,projectName,ownedStake,totalPayoutAmount,payoutAmount,date,status,comments);

@override
String toString() {
  return 'PaymentRecordEntity(userId: $userId, projectId: $projectId, projectName: $projectName, ownedStake: $ownedStake, totalPayoutAmount: $totalPayoutAmount, payoutAmount: $payoutAmount, date: $date, status: $status, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$PaymentRecordEntityCopyWith<$Res> implements $PaymentRecordEntityCopyWith<$Res> {
  factory _$PaymentRecordEntityCopyWith(_PaymentRecordEntity value, $Res Function(_PaymentRecordEntity) _then) = __$PaymentRecordEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, String projectId, String projectName, int ownedStake, int totalPayoutAmount, String payoutAmount, DateTime date, PaymentStatus status, String? comments
});




}
/// @nodoc
class __$PaymentRecordEntityCopyWithImpl<$Res>
    implements _$PaymentRecordEntityCopyWith<$Res> {
  __$PaymentRecordEntityCopyWithImpl(this._self, this._then);

  final _PaymentRecordEntity _self;
  final $Res Function(_PaymentRecordEntity) _then;

/// Create a copy of PaymentRecordEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? projectId = null,Object? projectName = null,Object? ownedStake = null,Object? totalPayoutAmount = null,Object? payoutAmount = null,Object? date = null,Object? status = null,Object? comments = freezed,}) {
  return _then(_PaymentRecordEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,projectName: null == projectName ? _self.projectName : projectName // ignore: cast_nullable_to_non_nullable
as String,ownedStake: null == ownedStake ? _self.ownedStake : ownedStake // ignore: cast_nullable_to_non_nullable
as int,totalPayoutAmount: null == totalPayoutAmount ? _self.totalPayoutAmount : totalPayoutAmount // ignore: cast_nullable_to_non_nullable
as int,payoutAmount: null == payoutAmount ? _self.payoutAmount : payoutAmount // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
