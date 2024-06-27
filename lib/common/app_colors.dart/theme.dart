import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff176e00),
      surfaceTint: Color(0xff176e00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8bff69),
      onPrimaryContainer: Color(0xff105600),
      secondary: Color(0xff176e00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9cfb7d),
      onSecondaryContainer: Color(0xff105500),
      tertiary: Color(0xff006c48),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff66ffbc),
      onTertiaryContainer: Color(0xff005437),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff2fde8),
      onBackground: Color(0xff151e11),
      surface: Color(0xfff2fde8),
      onSurface: Color(0xff151e11),
      surfaceVariant: Color(0xffd7e8cc),
      onSurfaceVariant: Color(0xff3d4b36),
      outline: Color(0xff6c7b64),
      outlineVariant: Color(0xffbbcbb0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2a3325),
      inverseOnSurface: Color(0xffe9f4df),
      inversePrimary: Color(0xff3be406),
      primaryFixed: Color(0xff7aff56),
      onPrimaryFixed: Color(0xff032100),
      primaryFixedDim: Color(0xff3be406),
      onPrimaryFixedVariant: Color(0xff0f5300),
      secondaryFixed: Color(0xff9af97c),
      onSecondaryFixed: Color(0xff032100),
      secondaryFixedDim: Color(0xff7fdc63),
      onSecondaryFixedVariant: Color(0xff0f5300),
      tertiaryFixed: Color(0xff49ffb6),
      onTertiaryFixed: Color(0xff002113),
      tertiaryFixedDim: Color(0xff00e29b),
      onTertiaryFixedVariant: Color(0xff005235),
      surfaceDim: Color(0xffd3dec9),
      surfaceBright: Color(0xfff2fde8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf7e2),
      surfaceContainer: Color(0xffe7f1dc),
      surfaceContainerHigh: Color(0xffe1ecd7),
      surfaceContainerHighest: Color(0xffdbe6d1),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff0e4e00),
      surfaceTint: Color(0xff176e00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1e8700),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0e4e00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2c8614),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004d32),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00855a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff2fde8),
      onBackground: Color(0xff151e11),
      surface: Color(0xfff2fde8),
      onSurface: Color(0xff151e11),
      surfaceVariant: Color(0xffd7e8cc),
      onSurfaceVariant: Color(0xff394732),
      outline: Color(0xff55634d),
      outlineVariant: Color(0xff707f68),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2a3325),
      inverseOnSurface: Color(0xffe9f4df),
      inversePrimary: Color(0xff3be406),
      primaryFixed: Color(0xff1e8700),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff166b00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2c8614),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff166b00),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00855a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff006a46),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd3dec9),
      surfaceBright: Color(0xfff2fde8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf7e2),
      surfaceContainer: Color(0xffe7f1dc),
      surfaceContainerHigh: Color(0xffe1ecd7),
      surfaceContainerHighest: Color(0xffdbe6d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff042900),
      surfaceTint: Color(0xff176e00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0e4e00),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff042900),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff0e4e00),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002818),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004d32),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff2fde8),
      onBackground: Color(0xff151e11),
      surface: Color(0xfff2fde8),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffd7e8cc),
      onSurfaceVariant: Color(0xff1a2715),
      outline: Color(0xff394732),
      outlineVariant: Color(0xff394732),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2a3325),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffb6ff9b),
      primaryFixed: Color(0xff0e4e00),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff073500),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff0e4e00),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff073500),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004d32),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003421),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd3dec9),
      surfaceBright: Color(0xfff2fde8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf7e2),
      surfaceContainer: Color(0xffe7f1dc),
      surfaceContainerHigh: Color(0xffe1ecd7),
      surfaceContainerHighest: Color(0xffdbe6d1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xff3be406),
      onPrimary: Color(0xff083900),
      primaryContainer: Color(0xff4df323),
      onPrimaryContainer: Color(0xff0d4a00),
      secondary: Color(0xff7fdc63),
      onSecondary: Color(0xff083900),
      secondaryContainer: Color(0xff166a00),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff003824),
      tertiaryContainer: Color(0xff00f2a6),
      onTertiaryContainer: Color(0xff00492f),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0d160a),
      onBackground: Color(0xffdbe6d1),
      surface: Color(0xff0d160a),
      onSurface: Color(0xffdbe6d1),
      surfaceVariant: Color(0xff3d4b36),
      onSurfaceVariant: Color(0xffbbcbb0),
      outline: Color(0xff86957d),
      outlineVariant: Color(0xff3d4b36),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdbe6d1),
      inverseOnSurface: Color(0xff2a3325),
      inversePrimary: Color(0xff176e00),
      primaryFixed: Color(0xff7aff56),
      onPrimaryFixed: Color(0xff032100),
      primaryFixedDim: Color(0xff3be406),
      onPrimaryFixedVariant: Color(0xff0f5300),
      secondaryFixed: Color(0xff9af97c),
      onSecondaryFixed: Color(0xff032100),
      secondaryFixedDim: Color(0xff7fdc63),
      onSecondaryFixedVariant: Color(0xff0f5300),
      tertiaryFixed: Color(0xff49ffb6),
      onTertiaryFixed: Color(0xff002113),
      tertiaryFixedDim: Color(0xff00e29b),
      onTertiaryFixedVariant: Color(0xff005235),
      surfaceDim: Color(0xff0d160a),
      surfaceBright: Color(0xff323c2d),
      surfaceContainerLowest: Color(0xff081005),
      surfaceContainerLow: Color(0xff151e11),
      surfaceContainer: Color(0xff192215),
      surfaceContainerHigh: Color(0xff232d1f),
      surfaceContainerHighest: Color(0xff2e3729),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xff3be406),
      onPrimary: Color(0xff083900),
      primaryContainer: Color(0xff4df323),
      onPrimaryContainer: Color(0xff042600),
      secondary: Color(0xff83e167),
      onSecondary: Color(0xff021b00),
      secondaryContainer: Color(0xff4aa432),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff003824),
      tertiaryContainer: Color(0xff00f2a6),
      onTertiaryContainer: Color(0xff002516),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0d160a),
      onBackground: Color(0xffdbe6d1),
      surface: Color(0xff0d160a),
      onSurface: Color(0xfff3fee9),
      surfaceVariant: Color(0xff3d4b36),
      onSurfaceVariant: Color(0xffc0d0b5),
      outline: Color(0xff98a88e),
      outlineVariant: Color(0xff788870),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdbe6d1),
      inverseOnSurface: Color(0xff232d1f),
      inversePrimary: Color(0xff0f5400),
      primaryFixed: Color(0xff7aff56),
      onPrimaryFixed: Color(0xff011500),
      primaryFixedDim: Color(0xff3be406),
      onPrimaryFixedVariant: Color(0xff094000),
      secondaryFixed: Color(0xff9af97c),
      onSecondaryFixed: Color(0xff011500),
      secondaryFixedDim: Color(0xff7fdc63),
      onSecondaryFixedVariant: Color(0xff094000),
      tertiaryFixed: Color(0xff49ffb6),
      onTertiaryFixed: Color(0xff00150b),
      tertiaryFixedDim: Color(0xff00e29b),
      onTertiaryFixedVariant: Color(0xff003f28),
      surfaceDim: Color(0xff0d160a),
      surfaceBright: Color(0xff323c2d),
      surfaceContainerLowest: Color(0xff081005),
      surfaceContainerLow: Color(0xff151e11),
      surfaceContainer: Color(0xff192215),
      surfaceContainerHigh: Color(0xff232d1f),
      surfaceContainerHighest: Color(0xff2e3729),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xff3be406),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff4df323),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff2ffe7),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff83e167),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff00f2a6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0d160a),
      onBackground: Color(0xffdbe6d1),
      surface: Color(0xff0d160a),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3d4b36),
      onSurfaceVariant: Color(0xfff2ffe7),
      outline: Color(0xffc0d0b5),
      outlineVariant: Color(0xffc0d0b5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdbe6d1),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff063200),
      primaryFixed: Color(0xff99ff79),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff41e912),
      onPrimaryFixedVariant: Color(0xff021b00),
      secondaryFixed: Color(0xff9ffe80),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff83e167),
      onSecondaryFixedVariant: Color(0xff021b00),
      tertiaryFixed: Color(0xff7cffc1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff00e79f),
      onTertiaryFixedVariant: Color(0xff001b0f),
      surfaceDim: Color(0xff0d160a),
      surfaceBright: Color(0xff323c2d),
      surfaceContainerLowest: Color(0xff081005),
      surfaceContainerLow: Color(0xff151e11),
      surfaceContainer: Color(0xff192215),
      surfaceContainerHigh: Color(0xff232d1f),
      surfaceContainerHighest: Color(0xff2e3729),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
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

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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
