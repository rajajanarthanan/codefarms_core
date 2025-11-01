import 'package:codefarms_core/helpers/date_helpers.dart';
import 'package:equatable/equatable.dart';

enum ContributionStatus { pending, rewarded, rejected }

extension ContributionStatusX on ContributionStatus {
  String get label {
    switch (this) {
      case ContributionStatus.pending:
        return "Pending";
      case ContributionStatus.rewarded:
        return "Rewarded";
      case ContributionStatus.rejected:
        return "Rejected";
    }
  }

  static ContributionStatus fromLabel(String label) {
    switch (label) {
      case "Pending":
        return ContributionStatus.pending;
      case "Rewarded":
        return ContributionStatus.rewarded;
      case "Rejected":
        return ContributionStatus.rejected;
      default:
        throw Exception("Invalid ContributionStatus label: $label");
    }
  }
}

class ContributionEntity extends Equatable {
  final String userId;
  final String? contributionId;
  final int value;
  final String desc;
  final String metaDataUri;
  final DateTime? rewardedOn;
  final ContributionStatus rewardStatus;
  final String projectTitle;
  final String projectId;
  const ContributionEntity({
    required this.userId,
    this.contributionId,
    required this.value,
    required this.desc,
    required this.rewardStatus,
    required this.metaDataUri,
    required this.rewardedOn,
    required this.projectId,
    required this.projectTitle,
  });
  @override
  List<Object?> get props => [
    userId,
    contributionId,
    value,
    desc,
    metaDataUri,
    rewardedOn,
    rewardStatus,
    projectId,
    projectTitle,
  ];

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'contributionId': contributionId,
      'value': value,
      'desc': desc,
      'metaDataUri': metaDataUri,
      'rewardedOn': rewardedOn?.toIso8601String(),
      'rewardStatus': rewardStatus.label,
      'projectId': projectId,
      'projectTitle': projectTitle,
    };
  }

  static ContributionEntity fromJson(Map<String, dynamic> json) {
    return ContributionEntity(
      userId: json['userId'],
      contributionId: json['contributionId'],
      value: json['value'],
      desc: json['desc'],
      rewardStatus: ContributionStatusX.fromLabel(json['rewardStatus']),
      metaDataUri: json['metaDataUri'],
      rewardedOn: parseDate(json['rewardedOn']),
      projectId: json['projectId'],
      projectTitle: json['projectTitle'],
    );
  }
}
