import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'insets.dart';

const Color brandColor = Color.fromARGB(255, 1, 70, 139);

// Monochrome minimalist light color scheme (white + gray)
const ColorScheme kCoolLightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF111111), // almost black
  onPrimary: Colors.white,
  secondary: Color(0xFF444444), // dark gray
  onSecondary: Colors.white,
  error: Color(0xFFB00020),
  onError: Colors.white,
  surface: Color(0xFFF7F7F7), // very light gray
  onSurface: Color(0xFF1A1A1A),
  outline: Color(0xFFE0E0E0),
  shadow: Colors.black12,
  surfaceContainer: Color.fromARGB(255, 164, 196, 226),
  surfaceContainerHighest: Color.fromARGB(255, 164, 196, 226),
  surfaceContainerHigh: Color.fromARGB(255, 169, 196, 219),
  surfaceContainerLow: Color.fromARGB(255, 172, 194, 212),
  surfaceContainerLowest: Color.fromARGB(255, 207, 222, 235),
);

// Monochrome minimalist dark color scheme (black + gray)
const ColorScheme kCoolDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Colors.white,
  onPrimary: Colors.black,
  secondary: Color(0xFFAAAAAA),
  onSecondary: Colors.black,
  error: Color(0xFFCF6679),
  onError: Colors.black,
  surface: Color(0xFF0A0A0A),
  onSurface: Colors.white,
  outline: Color.fromARGB(255, 98, 109, 128),
  shadow: Color.fromARGB(255, 207, 216, 220),
  surfaceContainer: Color.fromARGB(255, 15, 17, 22),
  surfaceContainerHighest: Color.fromARGB(255, 29, 32, 41),
  surfaceContainerHigh: Color.fromARGB(255, 24, 27, 36),
  surfaceContainerLow: Color.fromARGB(255, 20, 23, 32),
  surfaceContainerLowest: Color.fromARGB(255, 11, 13, 19),
);

// Typography — clean, modern
TextTheme coolTextTheme(ColorScheme scheme) =>
    GoogleFonts.spaceGroteskTextTheme(
      ThemeData(brightness: scheme.brightness).textTheme,
    ).apply(bodyColor: scheme.onSurface, displayColor: scheme.onSurface);

ThemeData buildCoolTheme(ColorScheme colorScheme) {
  final textTheme = coolTextTheme(colorScheme);
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: textTheme,
    scaffoldBackgroundColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
      titleTextStyle: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
        color: colorScheme.onSurface,
      ),
    ),
    iconTheme: IconThemeData(color: colorScheme.primary),
    cardTheme: CardTheme(
      color: colorScheme.surfaceContainer,
      margin: const EdgeInsets.all(Insets.md),
      elevation: 2,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: colorScheme.outline,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        borderRadius: BorderRadius.circular(Insets.md),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Insets.sm),
        ),
        elevation: 0,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurface.withValues(alpha: 0.6),
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      showUnselectedLabels: true,
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Insets.sm),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Insets.sm),
        borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
      ),
    ),
  );
}

final ThemeData coolLightTheme = buildCoolTheme(kCoolLightColorScheme);
final ThemeData coolDarkTheme = buildCoolTheme(kCoolDarkColorScheme);

// final ThemeData lightTheme = ThemeData.from(colorScheme: kLightColorScheme);
// final ThemeData darkTheme = ThemeData.from(colorScheme: kDarkColorScheme);

class ShadowCard extends StatelessWidget {
  final Widget child;
  const ShadowCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.all(Insets.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            scheme.surfaceContainerLowest,
            scheme.surfaceContainerLow,
            scheme.surfaceContainerHigh,
            scheme.surfaceContainerHighest,
          ],
        ),
        borderRadius: BorderRadius.circular(Insets.md),
        border: Border.all(color: scheme.outline, width: 1.0),
        boxShadow: [
          BoxShadow(
            color: scheme.shadow,
            blurRadius: 1,
            spreadRadius: 2,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: child,
    );
  }
}
