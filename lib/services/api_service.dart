import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/di/getit.dart';
import 'package:codefarms_core/resources/agentiq_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  ApiService();

  Future<AgentiqResponse> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final dio = getIt<Dio>();
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );

      if (response.statusCode == 200) {
        if (response.data != null && response.data['status'] == true) {
          return AgentiqResponse(
            status: true,
            message: response.data['message'] ?? 'Request successful',
            data: response.data['data'],
          );
        } else {
          return AgentiqResponse(
            status: false,
            message: response.data['message'] ?? 'Request failed',
            data: response.data['data'],
          );
        }
      } else {
        return AgentiqResponse(
          status: false,
          message: 'Request failed with status: ${response.statusCode}',
          data: response.data,
        );
      }
    } catch (e) {
      logger.e("Error processing get request: $e");
      return AgentiqResponse(
        status: false,
        message: "Error processing get request: $e",
      );
    }
  }

  Future<AgentiqResponse> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final res = await getIt<Dio>().post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      if (res.statusCode == 200) {
        if (res.data != null && res.data['status'] == true) {
          return AgentiqResponse(
            status: true,
            message: res.data['message'] ?? 'Request successful',
            data: res.data,
          );
        } else {
          return AgentiqResponse(
            status: false,
            message: res.data['message'] ?? 'Request failed',
            data: res.data,
          );
        }
      } else {
        return AgentiqResponse(
          status: false,
          message: "Request failed with status: ${res.statusCode}",
          data: res.data,
        );
      }
    } catch (e) {
      logger.e("Error processing post request: $e");
      return AgentiqResponse(
        status: false,
        message: "Error processing post request: $e",
      );
    }
  }

  Future<AgentiqResponse> put(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final res = await getIt<Dio>().put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      if (res.statusCode == 200) {
        if (res.data != null && res.data['status'] == true) {
          return AgentiqResponse(
            status: true,
            message: res.data['message'] ?? 'Request successful',
            data: res.data,
          );
        } else {
          return AgentiqResponse(
            status: false,
            message: res.data['message'] ?? 'Request failed',
            data: res.data,
          );
        }
      } else {
        return AgentiqResponse(
          status: false,
          message: "Request failed with status: ${res.statusCode}",
          data: res.data,
        );
      }
    } catch (e) {
      logger.e("Error processing put request: $e");
      return AgentiqResponse(
        status: false,
        message: "Error processing put request: $e",
      );
    }
  }

  Future<AgentiqResponse> delete(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final res = await getIt<Dio>().delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      if (res.statusCode == 200) {
        if (!res.data) {
          return AgentiqResponse(
            status: false,
            message: "Request failed",
            data: res.data,
          );
        }
        final resData = AgentiqResponse.fromJson(res.data);
        if (resData.status) {
          return resData;
        } else {
          return AgentiqResponse(
            status: false,
            message: resData.message,
            data: resData.data,
          );
        }
      } else {
        return AgentiqResponse(
          status: false,
          message: "Request failed with status: ${res.statusCode}",
          data: res.data,
        );
      }
    } catch (e) {
      logger.e("Error processing delete request: $e");
      return AgentiqResponse(
        status: false,
        message: "Error processing delete request: $e",
      );
    }
  }
}
