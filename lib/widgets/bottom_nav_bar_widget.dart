import 'package:codefarms_core/codefarms_core.dart';
import 'package:codefarms_core/di/getit.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? SizedBox.shrink()
        : ConvexAppBar(
          items: [
            TabItem(icon: Icons.people, title: 'Network'),
            TabItem(icon: Icons.person, title: 'Profile'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.settings, title: 'Settings'),
            TabItem(icon: Icons.logout, title: 'Logout'),
          ],
          onTap: (int i) {
            switch (i) {
              case 0:
                break;
              case 1:
                getIt<CoreNavigator>().navigateTo(AppRoutes.dashboard);
                break;
              case 2:
                getIt<CoreNavigator>().navigateTo(AppRoutes.profile);
                break;
              case 3:
                break;
              case 4:
                context.read<UserSessionBloc>().add(
                  UserSessionLogOutRequestEvent(),
                );
                break;
            }
          },
        );
  }
}
