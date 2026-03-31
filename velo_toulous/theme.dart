import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ═══════════════════════════════════════════════════════
//  PedalGo Design System
//  Primary   #84B179  · Forest Green
//  Secondary #FFB38A  · Sunrise Peach
// ═══════════════════════════════════════════════════════

// ── 1. COLORS ───────────────────────────────────────────

class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF84B179);
  static const Color primaryDark = Color(0xFF6A9460);
  static const Color primaryLight = Color(0xFFD4E8D1);
  static const Color primaryFaint = Color(0xFFEDF5EC);

  static const Color secondary = Color(0xFFFFB38A);
  static const Color secondaryDark = Color(0xFFE8955E);
  static const Color secondaryLight = Color(0xFFFFE8D8);
  static const Color secondaryFaint = Color(0xFFFFF4EE);

  // Neutrals
  static const Color grey900 = Color(0xFF1A1C19);
  static const Color grey700 = Color(0xFF3D4039);
  static const Color grey500 = Color(0xFF6B7066);
  static const Color grey300 = Color(0xFFCDD4C8);
  static const Color grey100 = Color(0xFFE8EDE6);
  static const Color grey50 = Color(0xFFF4F6F3);

  // Semantic
  static const Color error = Color(0xFFE05252);
  static const Color success = Color(0xFF84B179);
  static const Color warning = Color(0xFFFFB38A);
  static const Color info = Color(0xFF5B9BD5);

  // Dark mode surfaces
  static const Color darkBg = Color(0xFF1E201D);
  static const Color darkSurface = Color(0xFF252722);
  static const Color darkBorder = Color(0xFF383B34);
  static const Color darkTextPrim = Color(0xFFE8EDE6);
  static const Color darkTextSub = Color(0xFFADB5A8);
}

// ── 2. TYPOGRAPHY ───────────────────────────────────────
// Requires: google_fonts: ^6.2.1 in pubspec.yaml
// Swap fontFamily with GoogleFonts.spaceGrotesk() / GoogleFonts.dmSans()

class AppText {
  AppText._();

  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    height: 1.15,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.3,
    height: 1.2,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.2,
    height: 1.3,
  );
  static const TextStyle bodyLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.6,
  );
  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.6,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
  static const TextStyle label = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.8,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );
  static const TextStyle buttonLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );
}

// ── 3. SPACING ──────────────────────────────────────────
// 4px base grid

class AppSpacing {
  AppSpacing._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;

  static const double screenH = 20; // horizontal screen padding
  static const double sectionGap = 32;
}

// ── 4. RADIUS ───────────────────────────────────────────

class AppRadius {
  AppRadius._();

  static const double sm = 6;
  static const double md = 10;
  static const double lg = 16;
  static const double xl = 24;
  static const double pill = 999;

  static const BorderRadius smR = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius mdR = BorderRadius.all(Radius.circular(md));
  static const BorderRadius lgR = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius xlR = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius pillR = BorderRadius.all(Radius.circular(pill));
}

// ── 5. THEME ────────────────────────────────────────────

ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: 'DM Sans',
  scaffoldBackgroundColor: AppColors.grey50,

  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: Colors.white,
    primaryContainer: AppColors.primaryLight,
    onPrimaryContainer: Color(0xFF527348),
    secondary: AppColors.secondary,
    onSecondary: AppColors.grey900,
    secondaryContainer: AppColors.secondaryLight,
    onSecondaryContainer: Color(0xFFC4703A),
    surface: Colors.white,
    onSurface: AppColors.grey900,
    onSurfaceVariant: AppColors.grey500,
    outline: AppColors.grey300,
    error: AppColors.error,
    onError: Colors.white,
  ),

  appBarTheme: const AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: AppColors.grey900,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.2,
      color: AppColors.grey900,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),

  // Primary green button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      disabledBackgroundColor: AppColors.grey100,
      disabledForegroundColor: AppColors.grey500,
      elevation: 0,
      shadowColor: Colors.transparent,
      textStyle: AppText.button,
      minimumSize: const Size(0, 48),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.mdR),
    ),
  ),

  // Secondary peach button
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.secondary,
      foregroundColor: AppColors.grey900,
      textStyle: AppText.button,
      minimumSize: const Size(0, 48),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.mdR),
    ),
  ),

  // Outlined / bordered
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primaryDark,
      side: const BorderSide(color: AppColors.primary, width: 1.5),
      textStyle: AppText.button,
      minimumSize: const Size(0, 48),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.mdR),
    ),
  ),

  // Ghost / cancel
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.grey700,
      textStyle: AppText.button,
      minimumSize: const Size(0, 44),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.mdR),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.grey300, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.error, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.error, width: 1.5),
    ),
    hintStyle: AppText.body.copyWith(color: AppColors.grey500),
    errorStyle: AppText.caption.copyWith(color: AppColors.error),
  ),

  cardTheme: const CardThemeData(
    color: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.lgR,
      side: BorderSide(color: AppColors.grey100),
    ),
    margin: EdgeInsets.zero,
    clipBehavior: Clip.antiAlias,
  ),

  dividerTheme: const DividerThemeData(
    color: AppColors.grey100,
    thickness: 1,
    space: 0,
  ),

  textTheme: const TextTheme(
    displayLarge: AppText.h1,
    displayMedium: AppText.h2,
    displaySmall: AppText.h3,
    bodyLarge: AppText.bodyLg,
    bodyMedium: AppText.body,
    bodySmall: AppText.caption,
    labelSmall: AppText.label,
    labelLarge: AppText.button,
  ),
);

ThemeData get darkTheme => lightTheme.copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBg,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
    onPrimary: Colors.white,
    primaryContainer: Color(0xFF527348),
    onPrimaryContainer: AppColors.primaryLight,
    secondary: AppColors.secondary,
    onSecondary: AppColors.grey900,
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkTextPrim,
    onSurfaceVariant: AppColors.darkTextSub,
    outline: AppColors.darkBorder,
    error: AppColors.error,
    onError: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.darkSurface,
    foregroundColor: AppColors.darkTextPrim,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.2,
      color: AppColors.darkTextPrim,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  cardTheme: const CardThemeData(
    color: AppColors.darkSurface,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.lgR,
      side: BorderSide(color: AppColors.darkBorder),
    ),
    margin: EdgeInsets.zero,
    clipBehavior: Clip.antiAlias,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkSurface,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    enabledBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.darkBorder, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.error, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: AppRadius.mdR,
      borderSide: const BorderSide(color: AppColors.error, width: 1.5),
    ),
    hintStyle: AppText.body.copyWith(color: AppColors.darkTextSub),
    errorStyle: AppText.caption.copyWith(color: AppColors.error),
  ),
);

// ── Quick reference ──────────────────────────────────────
//
//  Color:   AppColors.primary / grey900 / error …
//  Text:    AppText.h1 / body / caption / button …
//  Space:   AppSpacing.md (16) / lg (24) / xl (32) …
//  Radius:  AppRadius.lgR / pillR …
//
//  main.dart:
//  MaterialApp(
//    theme:     lightTheme,
//    darkTheme: darkTheme,
//    themeMode: ThemeMode.system,
//  );
