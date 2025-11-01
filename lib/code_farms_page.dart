import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/widgets/bottom_nav_bar_widget.dart';
import 'package:codefarms_core/widgets/desktop_body_widget.dart';
import 'package:flutter/material.dart';

class CodeFarmsPage extends StatelessWidget implements AgentiqView {
  const CodeFarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          isDesktop(context)
              ? desktopBody(context)
              : isTablet(context)
              ? tabletBody(context)
              : mobileBody(context),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }

  @override
  AppBar desktopAppBar(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget desktopBody(BuildContext context) {
    return DesktopBodyWidget();
  }

  @override
  BottomNavigationBar? desktopBottomNavigationBar(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  AppBar mobileAppBar(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget mobileBody(BuildContext context) {
    return DesktopBodyWidget();
  }

  @override
  BottomNavigationBar? mobileBottomNavigationBar(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  AppBar tabletAppBar(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget tabletBody(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  BottomNavigationBar? tabletBottomNavigationBar(BuildContext context) {
    throw UnimplementedError();
  }
}
