import 'package:agentiq/agentiq.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context, percent: 25),
      child: const Column(
        children: [
          Divider(),
          Center(child: Text("@2025 AgentIQ Minds LLP")),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("https://www.agentiqminds.com"),
                  Text("support@agentiqminds.com"),
                  Text("+91 9442828145"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
