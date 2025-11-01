import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/services/cloud_functions_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FirebaseFunctionsTestController {
  void testFunction() {
    logger.i('FirebaseFunctionsTestController: testFunction called');
  }

  final CloudFunctionsService _functions;
  FirebaseFunctionsTestController(this._functions);

  Future<void> callTestFunction() async {
    try {
      final result = await _functions.callFunction(
        'helloWorldCall ',
        data: {'param1': 'value1', 'param2': 422},
      );
      logger.i('Function result: ${result.data}');
    } catch (e) {
      logger.e('Error calling function: $e');
    }
  }
}
