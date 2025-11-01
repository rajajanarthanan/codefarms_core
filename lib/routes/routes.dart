class AppRoutes {
  static String login = '/';
  static String dashboard = "dashboard";
  static String profile = "profile";
  static String adminPanel = "adminPanel";
  static String network = "network";
  static String about = "about";
}

abstract class CoreNavigator {
  void navigateTo(String routeName);
}
