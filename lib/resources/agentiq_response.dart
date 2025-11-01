class AgentiqResponse {
  final bool status;
  final String message;
  final dynamic data;

  AgentiqResponse({required this.status, required this.message, this.data});

  @override
  String toString() {
    return 'AgentiqResponse{status: $status, message: $message, data: $data}';
  }

  factory AgentiqResponse.fromJson(Map<String, dynamic> json) {
    return AgentiqResponse(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'status': status, 'message': message, 'data': data};
  }
}
