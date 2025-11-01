import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/di/getit.dart';
import 'package:codefarms_core/widgets/test_widgets/firebase_functions_test_controller.dart';
import 'package:flutter/material.dart';

class FirebaseFunctionsTestWidget extends StatefulWidget {
  const FirebaseFunctionsTestWidget({super.key});

  @override
  State<FirebaseFunctionsTestWidget> createState() =>
      _FirebaseFunctionsTestWidgetState();
}

class _FirebaseFunctionsTestWidgetState
    extends State<FirebaseFunctionsTestWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView(
        children: [
          Text('Firebase Functions Test Widget'),
          ElevatedButton(
            onPressed: () async {
              try {
                final funs = getIt<FirebaseFunctionsTestController>();
                funs.callTestFunction();
              } catch (e) {
                logger.e('Error calling function: $e');
              }
            },
            child: Text('Call helloWorld Function'),
          ),
        ],
      ),
    );
  }
}
