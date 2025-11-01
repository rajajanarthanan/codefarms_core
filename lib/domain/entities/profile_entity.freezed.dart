// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEntity {

 String get displayName; String? get profilePicUrl; String get email; String? get about; String? get mobileNumber; String? get cryptoWallet; String? get firstName; String? get middleName; String? get lastName; String? get idProofNumber; IdProofType? get idProofType;//Update in backend manually
 String? get idProofUrl; String? get idProofFileName; DateTime? get dateOfBirth; String? get address; String? get bankAccountNumber; String? get bankIfscCode; String? get bankAccHolderName; bool get isBankKycVerified; bool get isIdKycVerified; bool get isKycCompleted;
/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<ProfileEntity> get copyWith => _$ProfileEntityCopyWithImpl<ProfileEntity>(this as ProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEntity&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.profilePicUrl, profilePicUrl) || other.profilePicUrl == profilePicUrl)&&(identical(other.email, email) || other.email == email)&&(identical(other.about, about) || other.about == about)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.cryptoWallet, cryptoWallet) || other.cryptoWallet == cryptoWallet)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.idProofNumber, idProofNumber) || other.idProofNumber == idProofNumber)&&(identical(other.idProofType, idProofType) || other.idProofType == idProofType)&&(identical(other.idProofUrl, idProofUrl) || other.idProofUrl == idProofUrl)&&(identical(other.idProofFileName, idProofFileName) || other.idProofFileName == idProofFileName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.address, address) || other.address == address)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankIfscCode, bankIfscCode) || other.bankIfscCode == bankIfscCode)&&(identical(other.bankAccHolderName, bankAccHolderName) || other.bankAccHolderName == bankAccHolderName)&&(identical(other.isBankKycVerified, isBankKycVerified) || other.isBankKycVerified == isBankKycVerified)&&(identical(other.isIdKycVerified, isIdKycVerified) || other.isIdKycVerified == isIdKycVerified)&&(identical(other.isKycCompleted, isKycCompleted) || other.isKycCompleted == isKycCompleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,displayName,profilePicUrl,email,about,mobileNumber,cryptoWallet,firstName,middleName,lastName,idProofNumber,idProofType,idProofUrl,idProofFileName,dateOfBirth,address,bankAccountNumber,bankIfscCode,bankAccHolderName,isBankKycVerified,isIdKycVerified,isKycCompleted]);

@override
String toString() {
  return 'ProfileEntity(displayName: $displayName, profilePicUrl: $profilePicUrl, email: $email, about: $about, mobileNumber: $mobileNumber, cryptoWallet: $cryptoWallet, firstName: $firstName, middleName: $middleName, lastName: $lastName, idProofNumber: $idProofNumber, idProofType: $idProofType, idProofUrl: $idProofUrl, idProofFileName: $idProofFileName, dateOfBirth: $dateOfBirth, address: $address, bankAccountNumber: $bankAccountNumber, bankIfscCode: $bankIfscCode, bankAccHolderName: $bankAccHolderName, isBankKycVerified: $isBankKycVerified, isIdKycVerified: $isIdKycVerified, isKycCompleted: $isKycCompleted)';
}


}

/// @nodoc
abstract mixin class $ProfileEntityCopyWith<$Res>  {
  factory $ProfileEntityCopyWith(ProfileEntity value, $Res Function(ProfileEntity) _then) = _$ProfileEntityCopyWithImpl;
@useResult
$Res call({
 String displayName, String? profilePicUrl, String email, String? about, String? mobileNumber, String? cryptoWallet, String? firstName, String? middleName, String? lastName, String? idProofNumber, IdProofType? idProofType, String? idProofUrl, String? idProofFileName, DateTime? dateOfBirth, String? address, String? bankAccountNumber, String? bankIfscCode, String? bankAccHolderName, bool isBankKycVerified, bool isIdKycVerified, bool isKycCompleted
});




}
/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._self, this._then);

  final ProfileEntity _self;
  final $Res Function(ProfileEntity) _then;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? profilePicUrl = freezed,Object? email = null,Object? about = freezed,Object? mobileNumber = freezed,Object? cryptoWallet = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? idProofNumber = freezed,Object? idProofType = freezed,Object? idProofUrl = freezed,Object? idProofFileName = freezed,Object? dateOfBirth = freezed,Object? address = freezed,Object? bankAccountNumber = freezed,Object? bankIfscCode = freezed,Object? bankAccHolderName = freezed,Object? isBankKycVerified = null,Object? isIdKycVerified = null,Object? isKycCompleted = null,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,profilePicUrl: freezed == profilePicUrl ? _self.profilePicUrl : profilePicUrl // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,about: freezed == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,cryptoWallet: freezed == cryptoWallet ? _self.cryptoWallet : cryptoWallet // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,idProofNumber: freezed == idProofNumber ? _self.idProofNumber : idProofNumber // ignore: cast_nullable_to_non_nullable
as String?,idProofType: freezed == idProofType ? _self.idProofType : idProofType // ignore: cast_nullable_to_non_nullable
as IdProofType?,idProofUrl: freezed == idProofUrl ? _self.idProofUrl : idProofUrl // ignore: cast_nullable_to_non_nullable
as String?,idProofFileName: freezed == idProofFileName ? _self.idProofFileName : idProofFileName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: freezed == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,bankIfscCode: freezed == bankIfscCode ? _self.bankIfscCode : bankIfscCode // ignore: cast_nullable_to_non_nullable
as String?,bankAccHolderName: freezed == bankAccHolderName ? _self.bankAccHolderName : bankAccHolderName // ignore: cast_nullable_to_non_nullable
as String?,isBankKycVerified: null == isBankKycVerified ? _self.isBankKycVerified : isBankKycVerified // ignore: cast_nullable_to_non_nullable
as bool,isIdKycVerified: null == isIdKycVerified ? _self.isIdKycVerified : isIdKycVerified // ignore: cast_nullable_to_non_nullable
as bool,isKycCompleted: null == isKycCompleted ? _self.isKycCompleted : isKycCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileEntity].
extension ProfileEntityPatterns on ProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName,  String? profilePicUrl,  String email,  String? about,  String? mobileNumber,  String? cryptoWallet,  String? firstName,  String? middleName,  String? lastName,  String? idProofNumber,  IdProofType? idProofType,  String? idProofUrl,  String? idProofFileName,  DateTime? dateOfBirth,  String? address,  String? bankAccountNumber,  String? bankIfscCode,  String? bankAccHolderName,  bool isBankKycVerified,  bool isIdKycVerified,  bool isKycCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
return $default(_that.displayName,_that.profilePicUrl,_that.email,_that.about,_that.mobileNumber,_that.cryptoWallet,_that.firstName,_that.middleName,_that.lastName,_that.idProofNumber,_that.idProofType,_that.idProofUrl,_that.idProofFileName,_that.dateOfBirth,_that.address,_that.bankAccountNumber,_that.bankIfscCode,_that.bankAccHolderName,_that.isBankKycVerified,_that.isIdKycVerified,_that.isKycCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName,  String? profilePicUrl,  String email,  String? about,  String? mobileNumber,  String? cryptoWallet,  String? firstName,  String? middleName,  String? lastName,  String? idProofNumber,  IdProofType? idProofType,  String? idProofUrl,  String? idProofFileName,  DateTime? dateOfBirth,  String? address,  String? bankAccountNumber,  String? bankIfscCode,  String? bankAccHolderName,  bool isBankKycVerified,  bool isIdKycVerified,  bool isKycCompleted)  $default,) {final _that = this;
switch (_that) {
case _ProfileEntity():
return $default(_that.displayName,_that.profilePicUrl,_that.email,_that.about,_that.mobileNumber,_that.cryptoWallet,_that.firstName,_that.middleName,_that.lastName,_that.idProofNumber,_that.idProofType,_that.idProofUrl,_that.idProofFileName,_that.dateOfBirth,_that.address,_that.bankAccountNumber,_that.bankIfscCode,_that.bankAccHolderName,_that.isBankKycVerified,_that.isIdKycVerified,_that.isKycCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName,  String? profilePicUrl,  String email,  String? about,  String? mobileNumber,  String? cryptoWallet,  String? firstName,  String? middleName,  String? lastName,  String? idProofNumber,  IdProofType? idProofType,  String? idProofUrl,  String? idProofFileName,  DateTime? dateOfBirth,  String? address,  String? bankAccountNumber,  String? bankIfscCode,  String? bankAccHolderName,  bool isBankKycVerified,  bool isIdKycVerified,  bool isKycCompleted)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
return $default(_that.displayName,_that.profilePicUrl,_that.email,_that.about,_that.mobileNumber,_that.cryptoWallet,_that.firstName,_that.middleName,_that.lastName,_that.idProofNumber,_that.idProofType,_that.idProofUrl,_that.idProofFileName,_that.dateOfBirth,_that.address,_that.bankAccountNumber,_that.bankIfscCode,_that.bankAccHolderName,_that.isBankKycVerified,_that.isIdKycVerified,_that.isKycCompleted);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileEntity implements ProfileEntity {
  const _ProfileEntity({required this.displayName, this.profilePicUrl, required this.email, this.about, this.mobileNumber, this.cryptoWallet, this.firstName, this.middleName, this.lastName, this.idProofNumber, this.idProofType, this.idProofUrl, this.idProofFileName, this.dateOfBirth, this.address, this.bankAccountNumber, this.bankIfscCode, this.bankAccHolderName, this.isBankKycVerified = false, this.isIdKycVerified = false, this.isKycCompleted = false});
  

@override final  String displayName;
@override final  String? profilePicUrl;
@override final  String email;
@override final  String? about;
@override final  String? mobileNumber;
@override final  String? cryptoWallet;
@override final  String? firstName;
@override final  String? middleName;
@override final  String? lastName;
@override final  String? idProofNumber;
@override final  IdProofType? idProofType;
//Update in backend manually
@override final  String? idProofUrl;
@override final  String? idProofFileName;
@override final  DateTime? dateOfBirth;
@override final  String? address;
@override final  String? bankAccountNumber;
@override final  String? bankIfscCode;
@override final  String? bankAccHolderName;
@override@JsonKey() final  bool isBankKycVerified;
@override@JsonKey() final  bool isIdKycVerified;
@override@JsonKey() final  bool isKycCompleted;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEntityCopyWith<_ProfileEntity> get copyWith => __$ProfileEntityCopyWithImpl<_ProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEntity&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.profilePicUrl, profilePicUrl) || other.profilePicUrl == profilePicUrl)&&(identical(other.email, email) || other.email == email)&&(identical(other.about, about) || other.about == about)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.cryptoWallet, cryptoWallet) || other.cryptoWallet == cryptoWallet)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.idProofNumber, idProofNumber) || other.idProofNumber == idProofNumber)&&(identical(other.idProofType, idProofType) || other.idProofType == idProofType)&&(identical(other.idProofUrl, idProofUrl) || other.idProofUrl == idProofUrl)&&(identical(other.idProofFileName, idProofFileName) || other.idProofFileName == idProofFileName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.address, address) || other.address == address)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankIfscCode, bankIfscCode) || other.bankIfscCode == bankIfscCode)&&(identical(other.bankAccHolderName, bankAccHolderName) || other.bankAccHolderName == bankAccHolderName)&&(identical(other.isBankKycVerified, isBankKycVerified) || other.isBankKycVerified == isBankKycVerified)&&(identical(other.isIdKycVerified, isIdKycVerified) || other.isIdKycVerified == isIdKycVerified)&&(identical(other.isKycCompleted, isKycCompleted) || other.isKycCompleted == isKycCompleted));
}


@override
int get hashCode => Object.hashAll([runtimeType,displayName,profilePicUrl,email,about,mobileNumber,cryptoWallet,firstName,middleName,lastName,idProofNumber,idProofType,idProofUrl,idProofFileName,dateOfBirth,address,bankAccountNumber,bankIfscCode,bankAccHolderName,isBankKycVerified,isIdKycVerified,isKycCompleted]);

@override
String toString() {
  return 'ProfileEntity(displayName: $displayName, profilePicUrl: $profilePicUrl, email: $email, about: $about, mobileNumber: $mobileNumber, cryptoWallet: $cryptoWallet, firstName: $firstName, middleName: $middleName, lastName: $lastName, idProofNumber: $idProofNumber, idProofType: $idProofType, idProofUrl: $idProofUrl, idProofFileName: $idProofFileName, dateOfBirth: $dateOfBirth, address: $address, bankAccountNumber: $bankAccountNumber, bankIfscCode: $bankIfscCode, bankAccHolderName: $bankAccHolderName, isBankKycVerified: $isBankKycVerified, isIdKycVerified: $isIdKycVerified, isKycCompleted: $isKycCompleted)';
}


}

/// @nodoc
abstract mixin class _$ProfileEntityCopyWith<$Res> implements $ProfileEntityCopyWith<$Res> {
  factory _$ProfileEntityCopyWith(_ProfileEntity value, $Res Function(_ProfileEntity) _then) = __$ProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String displayName, String? profilePicUrl, String email, String? about, String? mobileNumber, String? cryptoWallet, String? firstName, String? middleName, String? lastName, String? idProofNumber, IdProofType? idProofType, String? idProofUrl, String? idProofFileName, DateTime? dateOfBirth, String? address, String? bankAccountNumber, String? bankIfscCode, String? bankAccHolderName, bool isBankKycVerified, bool isIdKycVerified, bool isKycCompleted
});




}
/// @nodoc
class __$ProfileEntityCopyWithImpl<$Res>
    implements _$ProfileEntityCopyWith<$Res> {
  __$ProfileEntityCopyWithImpl(this._self, this._then);

  final _ProfileEntity _self;
  final $Res Function(_ProfileEntity) _then;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? profilePicUrl = freezed,Object? email = null,Object? about = freezed,Object? mobileNumber = freezed,Object? cryptoWallet = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? idProofNumber = freezed,Object? idProofType = freezed,Object? idProofUrl = freezed,Object? idProofFileName = freezed,Object? dateOfBirth = freezed,Object? address = freezed,Object? bankAccountNumber = freezed,Object? bankIfscCode = freezed,Object? bankAccHolderName = freezed,Object? isBankKycVerified = null,Object? isIdKycVerified = null,Object? isKycCompleted = null,}) {
  return _then(_ProfileEntity(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,profilePicUrl: freezed == profilePicUrl ? _self.profilePicUrl : profilePicUrl // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,about: freezed == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,cryptoWallet: freezed == cryptoWallet ? _self.cryptoWallet : cryptoWallet // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,idProofNumber: freezed == idProofNumber ? _self.idProofNumber : idProofNumber // ignore: cast_nullable_to_non_nullable
as String?,idProofType: freezed == idProofType ? _self.idProofType : idProofType // ignore: cast_nullable_to_non_nullable
as IdProofType?,idProofUrl: freezed == idProofUrl ? _self.idProofUrl : idProofUrl // ignore: cast_nullable_to_non_nullable
as String?,idProofFileName: freezed == idProofFileName ? _self.idProofFileName : idProofFileName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: freezed == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,bankIfscCode: freezed == bankIfscCode ? _self.bankIfscCode : bankIfscCode // ignore: cast_nullable_to_non_nullable
as String?,bankAccHolderName: freezed == bankAccHolderName ? _self.bankAccHolderName : bankAccHolderName // ignore: cast_nullable_to_non_nullable
as String?,isBankKycVerified: null == isBankKycVerified ? _self.isBankKycVerified : isBankKycVerified // ignore: cast_nullable_to_non_nullable
as bool,isIdKycVerified: null == isIdKycVerified ? _self.isIdKycVerified : isIdKycVerified // ignore: cast_nullable_to_non_nullable
as bool,isKycCompleted: null == isKycCompleted ? _self.isKycCompleted : isKycCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
