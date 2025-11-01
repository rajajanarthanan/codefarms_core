import 'package:codefarms_core/widgets/app_bar/menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:codefarms_core/widgets/header_widgets/logo_widget.dart';
import 'package:codefarms_core/widgets/header_widgets/profile_card_area_widget.dart';
import 'package:codefarms_core/resources/insets.dart';
import 'package:flutter_svg/svg.dart';

/// A beautiful, responsive AppBar for web, tablet, and mobile
class CodeFarmsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final List<Widget>? actions;
  final Widget? bottom;

  const CodeFarmsAppBar({
    super.key,
    this.height = kToolbarHeight,
    this.actions,
    this.bottom,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(height + (bottom != null ? 48.0 : 0));

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 900;
    final isTablet =
        MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 900;
    final theme = Theme.of(context);

    final double logoSize = (isWide || isTablet) ? 40.0 : 20.0;

    return Material(
      elevation: 4,
      color: theme.appBarTheme.backgroundColor ?? theme.colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              SvgPicture.string(svgString, height: logoSize),
              const SizedBox(width: Insets.lg),
              Text(
                'CodeFarms',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: (isWide || isTablet) ? 24 : 16,
                ),
              ),

              Spacer(),

              if (isWide || isTablet) CodeFarmsNavBar(),

              if (actions != null) ...actions!,
              const ProfileCardAreaWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
