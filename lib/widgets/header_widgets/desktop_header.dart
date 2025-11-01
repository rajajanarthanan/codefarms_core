import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/widgets/header_widgets/profile_card_area_widget.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'logo_widget.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: getHeight(context, percent: 10),
        child: Row(
          children: [
            Expanded(flex: 1, child: LogoWidget()),

            if (kIsWeb) Expanded(flex: 1, child: ProfileCardAreaWidget()),
          ],
        ),
      ),
    );
  }
}
