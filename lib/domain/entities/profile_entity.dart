import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';

enum IdProofType { aadhar, pan }

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String displayName,
    String? profilePicUrl,
    required String email,
    String? about,
    String? mobileNumber,
    String? cryptoWallet,
    String? firstName,
    String? middleName,
    String? lastName,
    String? idProofNumber,
    IdProofType? idProofType, //Update in backend manually
    String? idProofUrl,
    String? idProofFileName,
    DateTime? dateOfBirth,
    String? address,
    String? bankAccountNumber,
    String? bankIfscCode,
    String? bankAccHolderName,

    @Default(false) bool isBankKycVerified,
    @Default(false) bool isIdKycVerified,
    @Default(false) bool isKycCompleted,
  }) = _ProfileEntity;

  static ProfileEntity fromJson(Map<String, dynamic> json) {
    return ProfileEntity(
      displayName: json['displayName'] as String,
      profilePicUrl: json['profilePicUrl'] as String?,
      email: json['email'] as String,
      about: json['about'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      cryptoWallet: json['cryptoWallet'] as String?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      idProofNumber: json['idProofNumber'] as String?,
      idProofType:
          json['idProofType'] != null
              ? IdProofType.values.firstWhere(
                (e) => e.toString() == 'IdProofType.${json['idProofType']}',
              )
              : null,
      idProofUrl: json['idProofUrl'] as String?,
      idProofFileName: json['idProofFileName'] as String?,
      dateOfBirth:
          json['dateOfBirth'] != null
              ? DateTime.parse(json['dateOfBirth'] as String)
              : null,
      address: json['address'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankIfscCode: json['bankIfscCode'] as String?,
      bankAccHolderName: json['bankAccHolderName'] as String?,
      isBankKycVerified: json['isBankKycVerified'] as bool? ?? false,
      isIdKycVerified: json['isIdKycVerified'] as bool? ?? false,
      isKycCompleted: json['isKycCompleted'] as bool? ?? false,
    );
  }
}
