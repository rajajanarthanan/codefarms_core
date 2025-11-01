import 'package:freezed_annotation/freezed_annotation.dart';
part 'kyc_status_entity.freezed.dart';

@freezed
abstract class KycStatusEntity with _$KycStatusEntity {
  const factory KycStatusEntity({
    @Default(0) int currentKycStep,
    @Default([]) List<String> kycCheckPoints,
    @Default(0) int kycCompletionPercent,
  }) = _KycStatusEntity;
}
