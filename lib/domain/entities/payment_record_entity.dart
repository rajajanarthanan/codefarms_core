import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_record_entity.freezed.dart';

enum PaymentStatus { pending, scheduled, paid }

@freezed
abstract class PaymentRecordEntity with _$PaymentRecordEntity {
  const factory PaymentRecordEntity({
    required String userId,
    required String projectId,
    required String projectName,
    required int ownedStake,
    required int totalPayoutAmount,
    required String payoutAmount,
    required DateTime date,
    required PaymentStatus status,
    String? comments,
  }) = _PaymentRecordEntity;

  static PaymentRecordEntity fromJson(Map<String, dynamic> json) {
    return PaymentRecordEntity(
      userId: json['userId'] as String,
      projectId: json['projectId'] as String,
      projectName: json['projectName'] as String,
      ownedStake: json['ownedStake'] as int,
      totalPayoutAmount: json['totalPayoutAmount'] as int,
      payoutAmount: json['payoutAmount'] as String,
      date: DateTime.parse(json['date'] as String),
      status: PaymentStatus.values.firstWhere(
        (e) => e.toString() == 'PaymentStatus.${json['status']}',
      ),
      comments: json['comments'] as String?,
    );
  }
}
