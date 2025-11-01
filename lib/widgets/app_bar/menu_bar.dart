import 'package:codefarms_core/codefarms_core.dart';
import 'package:codefarms_core/di/getit.dart';
import 'package:codefarms_core/widgets/header_widgets/profile_card_area_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CodeFarmsNavBar extends StatefulWidget {
  const CodeFarmsNavBar({super.key});
  @override
  State<CodeFarmsNavBar> createState() => _CodeFarmsNavBarState();
}

class _CodeFarmsNavBarState extends State<CodeFarmsNavBar> {
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final routesStack =
        GoRouter.of(context).routerDelegate.currentConfiguration;
    final currentRoute = routesStack.uri.toString();
    int activeTabIndex = 0;
    if (currentRoute == "/dashboard") {
      activeTabIndex = 0;
    } else if (currentRoute == "/profile") {
      activeTabIndex = 1;
    } else if (currentRoute == "/network") {
      activeTabIndex = 2;
    } else if (currentRoute == "/about") {
      activeTabIndex = 3;
    }

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: scheme.surface,
          border: Border(top: BorderSide(color: scheme.outline, width: 1)),
          boxShadow: [
            BoxShadow(
              color: scheme.shadow.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: SafeArea(
          top: false,
          child: GNav(
            selectedIndex: activeTabIndex,
            rippleColor: scheme.outline.withValues(alpha: 0.2),
            hoverColor: scheme.outline.withValues(alpha: 0.15),
            haptic: true,
            tabBorderRadius: 12,
            gap: 6,
            color: scheme.onSurface.withValues(alpha: 0.6),
            activeColor: scheme.primary,
            iconSize: 24,
            textStyle: textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: scheme.primary,
            ),
            tabBackgroundColor: scheme.primary.withValues(alpha: 0.08),

            // withOpacity(0.08),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            curve: Curves.easeOutCubic,
            duration: const Duration(milliseconds: 500),
            tabs: [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
                onPressed:
                    () =>
                        getIt<CoreNavigator>().navigateTo(AppRoutes.dashboard),
              ),
              GButton(
                icon: Icons.person_rounded,
                text: 'Profile',
                onPressed:
                    () => getIt<CoreNavigator>().navigateTo(AppRoutes.profile),
              ),
              GButton(
                icon: Icons.people_alt_rounded,
                active: currentRoute == AppRoutes.network,
                text: 'Network',
                onPressed:
                    () => getIt<CoreNavigator>().navigateTo(AppRoutes.network),
              ),
              GButton(
                icon: Icons.info_rounded,
                active: currentRoute == AppRoutes.about,
                text: 'About',
                onPressed:
                    () => getIt<CoreNavigator>().navigateTo(AppRoutes.about),
              ),
              GButton(
                icon: Icons.logout_outlined,
                text: 'Logout',
                onPressed: () => showLogoutDialog(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
