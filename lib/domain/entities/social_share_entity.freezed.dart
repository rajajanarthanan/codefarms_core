// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_share_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialShareEntity {

 String? get linkedinCertificationUrl; String? get linkedinPostUrl; String? get instagramPostUrl; String? get twitterPostUrl; String? get redditPostUrl; String? get devToPostUrl; String? get discordPostUrl; String? get rawLinkUrl;
/// Create a copy of SocialShareEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialShareEntityCopyWith<SocialShareEntity> get copyWith => _$SocialShareEntityCopyWithImpl<SocialShareEntity>(this as SocialShareEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialShareEntity&&(identical(other.linkedinCertificationUrl, linkedinCertificationUrl) || other.linkedinCertificationUrl == linkedinCertificationUrl)&&(identical(other.linkedinPostUrl, linkedinPostUrl) || other.linkedinPostUrl == linkedinPostUrl)&&(identical(other.instagramPostUrl, instagramPostUrl) || other.instagramPostUrl == instagramPostUrl)&&(identical(other.twitterPostUrl, twitterPostUrl) || other.twitterPostUrl == twitterPostUrl)&&(identical(other.redditPostUrl, redditPostUrl) || other.redditPostUrl == redditPostUrl)&&(identical(other.devToPostUrl, devToPostUrl) || other.devToPostUrl == devToPostUrl)&&(identical(other.discordPostUrl, discordPostUrl) || other.discordPostUrl == discordPostUrl)&&(identical(other.rawLinkUrl, rawLinkUrl) || other.rawLinkUrl == rawLinkUrl));
}


@override
int get hashCode => Object.hash(runtimeType,linkedinCertificationUrl,linkedinPostUrl,instagramPostUrl,twitterPostUrl,redditPostUrl,devToPostUrl,discordPostUrl,rawLinkUrl);

@override
String toString() {
  return 'SocialShareEntity(linkedinCertificationUrl: $linkedinCertificationUrl, linkedinPostUrl: $linkedinPostUrl, instagramPostUrl: $instagramPostUrl, twitterPostUrl: $twitterPostUrl, redditPostUrl: $redditPostUrl, devToPostUrl: $devToPostUrl, discordPostUrl: $discordPostUrl, rawLinkUrl: $rawLinkUrl)';
}


}

/// @nodoc
abstract mixin class $SocialShareEntityCopyWith<$Res>  {
  factory $SocialShareEntityCopyWith(SocialShareEntity value, $Res Function(SocialShareEntity) _then) = _$SocialShareEntityCopyWithImpl;
@useResult
$Res call({
 String? linkedinCertificationUrl, String? linkedinPostUrl, String? instagramPostUrl, String? twitterPostUrl, String? redditPostUrl, String? devToPostUrl, String? discordPostUrl, String? rawLinkUrl
});




}
/// @nodoc
class _$SocialShareEntityCopyWithImpl<$Res>
    implements $SocialShareEntityCopyWith<$Res> {
  _$SocialShareEntityCopyWithImpl(this._self, this._then);

  final SocialShareEntity _self;
  final $Res Function(SocialShareEntity) _then;

/// Create a copy of SocialShareEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? linkedinCertificationUrl = freezed,Object? linkedinPostUrl = freezed,Object? instagramPostUrl = freezed,Object? twitterPostUrl = freezed,Object? redditPostUrl = freezed,Object? devToPostUrl = freezed,Object? discordPostUrl = freezed,Object? rawLinkUrl = freezed,}) {
  return _then(_self.copyWith(
linkedinCertificationUrl: freezed == linkedinCertificationUrl ? _self.linkedinCertificationUrl : linkedinCertificationUrl // ignore: cast_nullable_to_non_nullable
as String?,linkedinPostUrl: freezed == linkedinPostUrl ? _self.linkedinPostUrl : linkedinPostUrl // ignore: cast_nullable_to_non_nullable
as String?,instagramPostUrl: freezed == instagramPostUrl ? _self.instagramPostUrl : instagramPostUrl // ignore: cast_nullable_to_non_nullable
as String?,twitterPostUrl: freezed == twitterPostUrl ? _self.twitterPostUrl : twitterPostUrl // ignore: cast_nullable_to_non_nullable
as String?,redditPostUrl: freezed == redditPostUrl ? _self.redditPostUrl : redditPostUrl // ignore: cast_nullable_to_non_nullable
as String?,devToPostUrl: freezed == devToPostUrl ? _self.devToPostUrl : devToPostUrl // ignore: cast_nullable_to_non_nullable
as String?,discordPostUrl: freezed == discordPostUrl ? _self.discordPostUrl : discordPostUrl // ignore: cast_nullable_to_non_nullable
as String?,rawLinkUrl: freezed == rawLinkUrl ? _self.rawLinkUrl : rawLinkUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialShareEntity].
extension SocialShareEntityPatterns on SocialShareEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialShareEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialShareEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialShareEntity value)  $default,){
final _that = this;
switch (_that) {
case _SocialShareEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialShareEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SocialShareEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? linkedinCertificationUrl,  String? linkedinPostUrl,  String? instagramPostUrl,  String? twitterPostUrl,  String? redditPostUrl,  String? devToPostUrl,  String? discordPostUrl,  String? rawLinkUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialShareEntity() when $default != null:
return $default(_that.linkedinCertificationUrl,_that.linkedinPostUrl,_that.instagramPostUrl,_that.twitterPostUrl,_that.redditPostUrl,_that.devToPostUrl,_that.discordPostUrl,_that.rawLinkUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? linkedinCertificationUrl,  String? linkedinPostUrl,  String? instagramPostUrl,  String? twitterPostUrl,  String? redditPostUrl,  String? devToPostUrl,  String? discordPostUrl,  String? rawLinkUrl)  $default,) {final _that = this;
switch (_that) {
case _SocialShareEntity():
return $default(_that.linkedinCertificationUrl,_that.linkedinPostUrl,_that.instagramPostUrl,_that.twitterPostUrl,_that.redditPostUrl,_that.devToPostUrl,_that.discordPostUrl,_that.rawLinkUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? linkedinCertificationUrl,  String? linkedinPostUrl,  String? instagramPostUrl,  String? twitterPostUrl,  String? redditPostUrl,  String? devToPostUrl,  String? discordPostUrl,  String? rawLinkUrl)?  $default,) {final _that = this;
switch (_that) {
case _SocialShareEntity() when $default != null:
return $default(_that.linkedinCertificationUrl,_that.linkedinPostUrl,_that.instagramPostUrl,_that.twitterPostUrl,_that.redditPostUrl,_that.devToPostUrl,_that.discordPostUrl,_that.rawLinkUrl);case _:
  return null;

}
}

}

/// @nodoc


class _SocialShareEntity implements SocialShareEntity {
  const _SocialShareEntity({this.linkedinCertificationUrl, this.linkedinPostUrl, this.instagramPostUrl, this.twitterPostUrl, this.redditPostUrl, this.devToPostUrl, this.discordPostUrl, this.rawLinkUrl});
  

@override final  String? linkedinCertificationUrl;
@override final  String? linkedinPostUrl;
@override final  String? instagramPostUrl;
@override final  String? twitterPostUrl;
@override final  String? redditPostUrl;
@override final  String? devToPostUrl;
@override final  String? discordPostUrl;
@override final  String? rawLinkUrl;

/// Create a copy of SocialShareEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialShareEntityCopyWith<_SocialShareEntity> get copyWith => __$SocialShareEntityCopyWithImpl<_SocialShareEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialShareEntity&&(identical(other.linkedinCertificationUrl, linkedinCertificationUrl) || other.linkedinCertificationUrl == linkedinCertificationUrl)&&(identical(other.linkedinPostUrl, linkedinPostUrl) || other.linkedinPostUrl == linkedinPostUrl)&&(identical(other.instagramPostUrl, instagramPostUrl) || other.instagramPostUrl == instagramPostUrl)&&(identical(other.twitterPostUrl, twitterPostUrl) || other.twitterPostUrl == twitterPostUrl)&&(identical(other.redditPostUrl, redditPostUrl) || other.redditPostUrl == redditPostUrl)&&(identical(other.devToPostUrl, devToPostUrl) || other.devToPostUrl == devToPostUrl)&&(identical(other.discordPostUrl, discordPostUrl) || other.discordPostUrl == discordPostUrl)&&(identical(other.rawLinkUrl, rawLinkUrl) || other.rawLinkUrl == rawLinkUrl));
}


@override
int get hashCode => Object.hash(runtimeType,linkedinCertificationUrl,linkedinPostUrl,instagramPostUrl,twitterPostUrl,redditPostUrl,devToPostUrl,discordPostUrl,rawLinkUrl);

@override
String toString() {
  return 'SocialShareEntity(linkedinCertificationUrl: $linkedinCertificationUrl, linkedinPostUrl: $linkedinPostUrl, instagramPostUrl: $instagramPostUrl, twitterPostUrl: $twitterPostUrl, redditPostUrl: $redditPostUrl, devToPostUrl: $devToPostUrl, discordPostUrl: $discordPostUrl, rawLinkUrl: $rawLinkUrl)';
}


}

/// @nodoc
abstract mixin class _$SocialShareEntityCopyWith<$Res> implements $SocialShareEntityCopyWith<$Res> {
  factory _$SocialShareEntityCopyWith(_SocialShareEntity value, $Res Function(_SocialShareEntity) _then) = __$SocialShareEntityCopyWithImpl;
@override @useResult
$Res call({
 String? linkedinCertificationUrl, String? linkedinPostUrl, String? instagramPostUrl, String? twitterPostUrl, String? redditPostUrl, String? devToPostUrl, String? discordPostUrl, String? rawLinkUrl
});




}
/// @nodoc
class __$SocialShareEntityCopyWithImpl<$Res>
    implements _$SocialShareEntityCopyWith<$Res> {
  __$SocialShareEntityCopyWithImpl(this._self, this._then);

  final _SocialShareEntity _self;
  final $Res Function(_SocialShareEntity) _then;

/// Create a copy of SocialShareEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? linkedinCertificationUrl = freezed,Object? linkedinPostUrl = freezed,Object? instagramPostUrl = freezed,Object? twitterPostUrl = freezed,Object? redditPostUrl = freezed,Object? devToPostUrl = freezed,Object? discordPostUrl = freezed,Object? rawLinkUrl = freezed,}) {
  return _then(_SocialShareEntity(
linkedinCertificationUrl: freezed == linkedinCertificationUrl ? _self.linkedinCertificationUrl : linkedinCertificationUrl // ignore: cast_nullable_to_non_nullable
as String?,linkedinPostUrl: freezed == linkedinPostUrl ? _self.linkedinPostUrl : linkedinPostUrl // ignore: cast_nullable_to_non_nullable
as String?,instagramPostUrl: freezed == instagramPostUrl ? _self.instagramPostUrl : instagramPostUrl // ignore: cast_nullable_to_non_nullable
as String?,twitterPostUrl: freezed == twitterPostUrl ? _self.twitterPostUrl : twitterPostUrl // ignore: cast_nullable_to_non_nullable
as String?,redditPostUrl: freezed == redditPostUrl ? _self.redditPostUrl : redditPostUrl // ignore: cast_nullable_to_non_nullable
as String?,devToPostUrl: freezed == devToPostUrl ? _self.devToPostUrl : devToPostUrl // ignore: cast_nullable_to_non_nullable
as String?,discordPostUrl: freezed == discordPostUrl ? _self.discordPostUrl : discordPostUrl // ignore: cast_nullable_to_non_nullable
as String?,rawLinkUrl: freezed == rawLinkUrl ? _self.rawLinkUrl : rawLinkUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
