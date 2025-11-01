// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSessionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSessionEvent()';
}


}

/// @nodoc
class $UserSessionEventCopyWith<$Res>  {
$UserSessionEventCopyWith(UserSessionEvent _, $Res Function(UserSessionEvent) __);
}


/// Adds pattern-matching-related methods to [UserSessionEvent].
extension UserSessionEventPatterns on UserSessionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitEvent value)?  initEvent,TResult Function( UserSessionUpdatedEvent value)?  userSessionUpdatedEvent,TResult Function( UserSessionLogOutRequestEvent value)?  userSessionLogOutRequestEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitEvent() when initEvent != null:
return initEvent(_that);case UserSessionUpdatedEvent() when userSessionUpdatedEvent != null:
return userSessionUpdatedEvent(_that);case UserSessionLogOutRequestEvent() when userSessionLogOutRequestEvent != null:
return userSessionLogOutRequestEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitEvent value)  initEvent,required TResult Function( UserSessionUpdatedEvent value)  userSessionUpdatedEvent,required TResult Function( UserSessionLogOutRequestEvent value)  userSessionLogOutRequestEvent,}){
final _that = this;
switch (_that) {
case InitEvent():
return initEvent(_that);case UserSessionUpdatedEvent():
return userSessionUpdatedEvent(_that);case UserSessionLogOutRequestEvent():
return userSessionLogOutRequestEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitEvent value)?  initEvent,TResult? Function( UserSessionUpdatedEvent value)?  userSessionUpdatedEvent,TResult? Function( UserSessionLogOutRequestEvent value)?  userSessionLogOutRequestEvent,}){
final _that = this;
switch (_that) {
case InitEvent() when initEvent != null:
return initEvent(_that);case UserSessionUpdatedEvent() when userSessionUpdatedEvent != null:
return userSessionUpdatedEvent(_that);case UserSessionLogOutRequestEvent() when userSessionLogOutRequestEvent != null:
return userSessionLogOutRequestEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initEvent,TResult Function( AgentiqUser? user)?  userSessionUpdatedEvent,TResult Function()?  userSessionLogOutRequestEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitEvent() when initEvent != null:
return initEvent();case UserSessionUpdatedEvent() when userSessionUpdatedEvent != null:
return userSessionUpdatedEvent(_that.user);case UserSessionLogOutRequestEvent() when userSessionLogOutRequestEvent != null:
return userSessionLogOutRequestEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initEvent,required TResult Function( AgentiqUser? user)  userSessionUpdatedEvent,required TResult Function()  userSessionLogOutRequestEvent,}) {final _that = this;
switch (_that) {
case InitEvent():
return initEvent();case UserSessionUpdatedEvent():
return userSessionUpdatedEvent(_that.user);case UserSessionLogOutRequestEvent():
return userSessionLogOutRequestEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initEvent,TResult? Function( AgentiqUser? user)?  userSessionUpdatedEvent,TResult? Function()?  userSessionLogOutRequestEvent,}) {final _that = this;
switch (_that) {
case InitEvent() when initEvent != null:
return initEvent();case UserSessionUpdatedEvent() when userSessionUpdatedEvent != null:
return userSessionUpdatedEvent(_that.user);case UserSessionLogOutRequestEvent() when userSessionLogOutRequestEvent != null:
return userSessionLogOutRequestEvent();case _:
  return null;

}
}

}

/// @nodoc


class InitEvent implements UserSessionEvent {
  const InitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSessionEvent.initEvent()';
}


}




/// @nodoc


class UserSessionUpdatedEvent implements UserSessionEvent {
  const UserSessionUpdatedEvent(this.user);
  

 final  AgentiqUser? user;

/// Create a copy of UserSessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionUpdatedEventCopyWith<UserSessionUpdatedEvent> get copyWith => _$UserSessionUpdatedEventCopyWithImpl<UserSessionUpdatedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionUpdatedEvent&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserSessionEvent.userSessionUpdatedEvent(user: $user)';
}


}

/// @nodoc
abstract mixin class $UserSessionUpdatedEventCopyWith<$Res> implements $UserSessionEventCopyWith<$Res> {
  factory $UserSessionUpdatedEventCopyWith(UserSessionUpdatedEvent value, $Res Function(UserSessionUpdatedEvent) _then) = _$UserSessionUpdatedEventCopyWithImpl;
@useResult
$Res call({
 AgentiqUser? user
});




}
/// @nodoc
class _$UserSessionUpdatedEventCopyWithImpl<$Res>
    implements $UserSessionUpdatedEventCopyWith<$Res> {
  _$UserSessionUpdatedEventCopyWithImpl(this._self, this._then);

  final UserSessionUpdatedEvent _self;
  final $Res Function(UserSessionUpdatedEvent) _then;

/// Create a copy of UserSessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(UserSessionUpdatedEvent(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AgentiqUser?,
  ));
}


}

/// @nodoc


class UserSessionLogOutRequestEvent implements UserSessionEvent {
  const UserSessionLogOutRequestEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionLogOutRequestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSessionEvent.userSessionLogOutRequestEvent()';
}


}




/// @nodoc
mixin _$UserSessionState {

 AgentiqUser? get user;
/// Create a copy of UserSessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionStateCopyWith<UserSessionState> get copyWith => _$UserSessionStateCopyWithImpl<UserSessionState>(this as UserSessionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserSessionState(user: $user)';
}


}

/// @nodoc
abstract mixin class $UserSessionStateCopyWith<$Res>  {
  factory $UserSessionStateCopyWith(UserSessionState value, $Res Function(UserSessionState) _then) = _$UserSessionStateCopyWithImpl;
@useResult
$Res call({
 AgentiqUser? user
});




}
/// @nodoc
class _$UserSessionStateCopyWithImpl<$Res>
    implements $UserSessionStateCopyWith<$Res> {
  _$UserSessionStateCopyWithImpl(this._self, this._then);

  final UserSessionState _self;
  final $Res Function(UserSessionState) _then;

/// Create a copy of UserSessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AgentiqUser?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSessionState].
extension UserSessionStatePatterns on UserSessionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSessionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSessionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSessionState value)  $default,){
final _that = this;
switch (_that) {
case _UserSessionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSessionState value)?  $default,){
final _that = this;
switch (_that) {
case _UserSessionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AgentiqUser? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSessionState() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AgentiqUser? user)  $default,) {final _that = this;
switch (_that) {
case _UserSessionState():
return $default(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AgentiqUser? user)?  $default,) {final _that = this;
switch (_that) {
case _UserSessionState() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _UserSessionState implements UserSessionState {
  const _UserSessionState({this.user = null});
  

@override@JsonKey() final  AgentiqUser? user;

/// Create a copy of UserSessionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSessionStateCopyWith<_UserSessionState> get copyWith => __$UserSessionStateCopyWithImpl<_UserSessionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSessionState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserSessionState(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserSessionStateCopyWith<$Res> implements $UserSessionStateCopyWith<$Res> {
  factory _$UserSessionStateCopyWith(_UserSessionState value, $Res Function(_UserSessionState) _then) = __$UserSessionStateCopyWithImpl;
@override @useResult
$Res call({
 AgentiqUser? user
});




}
/// @nodoc
class __$UserSessionStateCopyWithImpl<$Res>
    implements _$UserSessionStateCopyWith<$Res> {
  __$UserSessionStateCopyWithImpl(this._self, this._then);

  final _UserSessionState _self;
  final $Res Function(_UserSessionState) _then;

/// Create a copy of UserSessionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_UserSessionState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AgentiqUser?,
  ));
}


}

// dart format on
