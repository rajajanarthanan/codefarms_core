import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable(explicitToJson: true)
class CodeFarmsProject extends Equatable {
  @override
  List<Object?> get props => [
    id,
    powTokenAddress,
    revenueTokenAddress,
    governanceTokenAddress,
    testNetAddresses,
    name,
    description,
    projectUri,
    createdOn,
    updatedOn,
  ];

  final String id;
  final String? powTokenAddress;
  final String? revenueTokenAddress;
  final String? governanceTokenAddress;
  final TestNetAddresses testNetAddresses;
  final String name;
  final String description;
  final String projectUri;
  final DateTime createdOn;
  final DateTime updatedOn;

  const CodeFarmsProject({
    required this.id,
    required this.powTokenAddress,
    required this.revenueTokenAddress,
    required this.governanceTokenAddress,
    required this.testNetAddresses,
    required this.name,
    required this.description,
    required this.projectUri,
    required this.createdOn,
    required this.updatedOn,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'powTokenAddress': powTokenAddress,
      'revenueTokenAddress': revenueTokenAddress,
      'governanceTokenAddress': governanceTokenAddress,
      'testNetAddresses': testNetAddresses.toJson(),
      'name': name,
      'description': description,
      'projectUri': projectUri,
      'createdOn': createdOn.toIso8601String(),
      'updatedOn': updatedOn.toIso8601String(),
    };
  }

  static CodeFarmsProject fromJson(Map<String, dynamic> json) {
    return CodeFarmsProject(
      id: json['id'],
      powTokenAddress: json['powTokenAddress'],
      revenueTokenAddress: json['revenueTokenAddress'],
      governanceTokenAddress: json['governanceTokenAddress'],
      testNetAddresses: TestNetAddresses.fromJson(json['testNetAddresses']),
      name: json['name'],
      description: json['description'],
      projectUri: json['projectUri'],
      createdOn: _parseDate(json['createdOn']),
      updatedOn: _parseDate(json['updatedOn']),
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();

    // If it's already a DateTime
    if (value is DateTime) return value;

    // Firestore Timestamp-like object
    if (value is Map && value.containsKey('_seconds')) {
      final seconds = value['_seconds'] as int;
      final nanos = (value['_nanoseconds'] ?? 0) as int;
      return DateTime.fromMillisecondsSinceEpoch(
        seconds * 1000 + nanos ~/ 1000000,
      );
    }

    // ISO8601 string
    if (value is String) {
      return DateTime.tryParse(value) ?? DateTime.now();
    }

    // Fallback
    return DateTime.now();
  }
}

@JsonSerializable(explicitToJson: true)
class TestNetAddresses {
  String powTokenAddress;
  String revenueTokenAddress;
  String governanceTokenAddress;
  TestNetAddresses({
    required this.powTokenAddress,
    required this.revenueTokenAddress,
    required this.governanceTokenAddress,
  });
  Map<String, dynamic> toJson() {
    return {
      'powTokenAddress': powTokenAddress,
      'revenueTokenAddress': revenueTokenAddress,
      'governanceTokenAddress': governanceTokenAddress,
    };
  }

  static TestNetAddresses fromJson(Map<String, dynamic> json) {
    return TestNetAddresses(
      powTokenAddress: json['powTokenAddress'],
      revenueTokenAddress: json['revenueTokenAddress'],
      governanceTokenAddress: json['governanceTokenAddress'],
    );
  }
}
