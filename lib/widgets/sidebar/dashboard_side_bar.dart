import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/resources/insets.dart';
import 'package:flutter/material.dart';

const sideBarMenus = [
  "Dashboard",
  "Contributions",
  "Wealth Manager",
  "Projects",
  "My Issues",
  "Events",
  "Network",
  "Profile",
  "Support",
  "Knowledge Base",
];

class DashboardSideBar extends StatelessWidget {
  const DashboardSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context, percent: 10),
      color: Colors.transparent,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: getHeight(context, percent: 2)),
              Divider(),
              Gaps.h32,
              ...sideBarMenus.map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Insets.md),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: Insets.md),
                        child: Text(e),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(Insets.md),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Divider(),
                  SizedBox(height: Insets.sm),
                  Text(
                    "Code Farms Dashboard",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
