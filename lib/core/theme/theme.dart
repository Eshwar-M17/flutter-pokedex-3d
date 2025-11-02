import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xfff4f4f4),

    useMaterial3: true,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFF303943),
      ),
      bodyMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFFA4A4A4),
      ),
      displayLarge: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF303943),
      ),
      displayMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF303943),
      ),
      displaySmall: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Color(0xFF303943),
      ),
      headlineMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xFF303943),
      ),
      headlineSmall: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF303943),
      ),
      titleLarge: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xFF303943),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        suffixIconConstraints: BoxConstraints(maxWidth: 0),
        prefixIconConstraints: BoxConstraints(maxWidth: 20),
        constraints: const BoxConstraints(maxHeight: 36, maxWidth: 150),
        filled: true,
        fillColor: Colors.grey[300],

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ), // Reduce right padding
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
      menuStyle: const MenuStyle(
        maximumSize: WidgetStatePropertyAll(Size(150, double.maxFinite)),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStatePropertyAll(Colors.white70),
      elevation: const WidgetStatePropertyAll(0),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      hintStyle: const WidgetStatePropertyAll(
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),

      constraints: const BoxConstraints(maxHeight: 44),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFF121212),

    colorScheme: ColorScheme.dark(surface: Color(0xFF121212)),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFFE0E0E0),
      ),
      bodyMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFFA4A4A4),
      ),
      displayLarge: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFFE0E0E0),
      ),
      displayMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFFE0E0E0),
      ),
      displaySmall: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Color(0xFFE0E0E0),
      ),
      headlineMedium: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xFFE0E0E0),
      ),
      headlineSmall: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFFE0E0E0),
      ),
      titleLarge: TextStyle(
        fontFamily: "CircularStd-Book",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xFFE0E0E0),
      ),
    ),

    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        constraints: const BoxConstraints(maxHeight: 36, maxWidth: 150),
        filled: true,
        fillColor: Colors.grey[300],

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ), // Reduce right padding
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
      menuStyle: const MenuStyle(
        maximumSize: WidgetStatePropertyAll(Size(150, double.maxFinite)),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStatePropertyAll(Colors.grey[100]),
      elevation: const WidgetStatePropertyAll(0),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      hintStyle: const WidgetStatePropertyAll(
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black45,
        ),
      ),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),

      constraints: const BoxConstraints(maxHeight: 44),
    ),
  );
}
