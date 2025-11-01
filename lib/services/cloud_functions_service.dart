import 'package:agentiq/helpers/size_utils.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:codefarms_core/helpers/helpers.dart';
import 'package:codefarms_core/resources/agentiq_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class CloudFunctionsService {
  late final FirebaseFunctions _functions;
  CloudFunctionsService() {
    _functions = FirebaseFunctions.instance;
  }

  Future<AgentiqResponse> callFunction(
    String functionName, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final callable = _functions.httpsCallable(functionName);
      final result = await callable(data);
      return AgentiqResponse(
        status: result.data['status'] as bool? ?? false,
        message: result.data['message'] as String? ?? '',
        data: deepConvertData(result.data['data']),
      );
    } catch (e) {
      logger.e('Error function call details: $e');
      return AgentiqResponse(
        status: false,
        message: 'Error executing function: $e',
      );
    }
  }
}
