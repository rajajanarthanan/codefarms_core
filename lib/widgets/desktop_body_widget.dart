import 'package:codefarms_core/codefarms_core.dart';
import 'package:codefarms_core/widgets/test_widgets/firebase_functions_test_widget.dart';
import 'package:flutter/material.dart';

class DesktopBodyWidget extends StatelessWidget {
  const DesktopBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.xs),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DesktopHeader(),
          SizedBox(height: Insets.sm),
          FirebaseFunctionsTestWidget(),
        ],
      ),
    );
  }
}
