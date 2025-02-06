import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme = GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}


class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002a5b),
      surfaceTint: Color(0xff335ea0),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1d4c8d),
      onPrimaryContainer: Color(0xffe2eaff),
      secondary: Color(0xff515f7a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd6e2ff),
      onSecondaryContainer: Color(0xff3a4862),
      tertiary: Color(0xff431456),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff68387b),
      onTertiaryContainer: Color(0xfffbe0ff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff1a1c20),
      onSurfaceVariant: Color(0xff434750),
      outline: Color(0xff737781),
      outlineVariant: Color(0xffc3c6d2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3035),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3e),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff144687),
      secondaryFixed: Color(0xffd7e3ff),
      onSecondaryFixed: Color(0xff0c1b34),
      secondaryFixedDim: Color(0xffb8c7e7),
      onSecondaryFixedVariant: Color(0xff394761),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff320046),
      tertiaryFixedDim: Color(0xffecb2fe),
      onTertiaryFixedVariant: Color(0xff623375),
      surfaceDim: Color(0xffd9d9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3f9),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ee),
      surfaceContainerHighest: Color(0xffe2e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002a5b),
      surfaceTint: Color(0xff335ea0),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1d4c8d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff35435d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff677591),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff431456),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff68387b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff1a1c20),
      onSurfaceVariant: Color(0xff3f434c),
      outline: Color(0xff5b5f69),
      outlineVariant: Color(0xff777b85),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3035),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xff4c74b8),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff305b9e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff677591),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4e5c78),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9461a7),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff79488c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9d9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3f9),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ee),
      surfaceContainerHighest: Color(0xffe2e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00214b),
      surfaceTint: Color(0xff335ea0),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0c4283),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff13223b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff35435d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3a084d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5e2f71),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff20242d),
      outline: Color(0xff3f434c),
      outlineVariant: Color(0xff3f434c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3035),
      inversePrimary: Color(0xffe5ecff),
      primaryFixed: Color(0xff0c4283),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002c5e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff35435d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1e2d46),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5e2f71),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff451659),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9d9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3f9),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ee),
      surfaceContainerHighest: Color(0xffe2e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaac7ff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff002f65),
      primaryContainer: Color(0xff00336c),
      onPrimaryContainer: Color(0xffa5c4ff),
      secondary: Color(0xffb8c7e7),
      onSecondary: Color(0xff22304a),
      secondaryContainer: Color(0xff313f59),
      onSecondaryContainer: Color(0xffc5d4f4),
      tertiary: Color(0xffecb2fe),
      onTertiary: Color(0xff491b5d),
      tertiaryContainer: Color(0xff4e1f61),
      onTertiaryContainer: Color(0xffe9affb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111318),
      onSurface: Color(0xffe2e2e8),
      onSurfaceVariant: Color(0xffc3c6d2),
      outline: Color(0xff8d909b),
      outlineVariant: Color(0xff434750),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e8),
      inversePrimary: Color(0xff335ea0),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3e),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff144687),
      secondaryFixed: Color(0xffd7e3ff),
      onSecondaryFixed: Color(0xff0c1b34),
      secondaryFixedDim: Color(0xffb8c7e7),
      onSecondaryFixedVariant: Color(0xff394761),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff320046),
      tertiaryFixedDim: Color(0xffecb2fe),
      onTertiaryFixedVariant: Color(0xff623375),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e12),
      surfaceContainerLow: Color(0xff1a1c20),
      surfaceContainer: Color(0xff1e2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff333539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1cbff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff001635),
      primaryContainer: Color(0xff6991d7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbdcbeb),
      onSecondary: Color(0xff06162e),
      secondaryContainer: Color(0xff8391af),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeeb7ff),
      onTertiary: Color(0xff2a003c),
      tertiaryContainer: Color(0xffb27dc5),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xfffbfaff),
      onSurfaceVariant: Color(0xffc7cad6),
      outline: Color(0xff9fa3ae),
      outlineVariant: Color(0xff7f838e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e8),
      inversePrimary: Color(0xff164788),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff00112b),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff003570),
      secondaryFixed: Color(0xffd7e3ff),
      onSecondaryFixed: Color(0xff021129),
      secondaryFixedDim: Color(0xffb8c7e7),
      onSecondaryFixedVariant: Color(0xff283650),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff220031),
      tertiaryFixedDim: Color(0xffecb2fe),
      onTertiaryFixedVariant: Color(0xff502163),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e12),
      surfaceContainerLow: Color(0xff1a1c20),
      surfaceContainer: Color(0xff1e2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff333539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbfaff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb1cbff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbdcbeb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffeeb7ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffbfaff),
      outline: Color(0xffc7cad6),
      outlineVariant: Color(0xffc7cad6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e8),
      inversePrimary: Color(0xff002959),
      primaryFixed: Color(0xffdde7ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb1cbff),
      onPrimaryFixedVariant: Color(0xff001635),
      secondaryFixed: Color(0xffdde7ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbdcbeb),
      onSecondaryFixedVariant: Color(0xff06162e),
      tertiaryFixed: Color(0xfffadeff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffeeb7ff),
      onTertiaryFixedVariant: Color(0xff2a003c),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e12),
      surfaceContainerLow: Color(0xff1a1c20),
      surfaceContainer: Color(0xff1e2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff333539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
