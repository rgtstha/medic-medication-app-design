import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic_medication_app/theme/app_color.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData theme() {
    final baseTheme = ThemeData(brightness: Brightness.dark);
    return ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: inputDecorationTheme,
      textSelectionTheme: textSelectionTheme,
      scaffoldBackgroundColor: AppColor.backgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: AppColor.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: const TextStyle(fontSize: 18),
          minimumSize: const Size.fromHeight(60),
        ),
      ),
      textTheme: GoogleFonts.alegreyaSansTextTheme(
        baseTheme.textTheme,
      ).copyWith(
        displayLarge: GoogleFonts.alegreya(
          textStyle: baseTheme.textTheme.displayLarge?.copyWith(
            color: AppColor.white,
          ),
        ),
        displayMedium: GoogleFonts.alegreya(
          textStyle: baseTheme.textTheme.displayMedium?.copyWith(
            color: AppColor.white,
          ),
        ),
        displaySmall: GoogleFonts.alegreya(
          textStyle: baseTheme.textTheme.displaySmall?.copyWith(
            color: AppColor.white,
          ),
        ),
      ),
    );
  }

  static get inputDecorationTheme => InputDecorationTheme(
        suffixIconColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.error)) {
              return AppColor.error;
            }

            if (states.contains(MaterialState.focused)) {
              return AppColor.primary;
            }

            if (states.contains(MaterialState.disabled)) {
              return AppColor.white70;
            }

            return AppColor.white70;
          },
        ),
        floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) {
          TextStyle style = const TextStyle();

          if (states.contains(MaterialState.error)) {
            return style.copyWith(color: AppColor.error);
          }
          if (states.contains(MaterialState.focused)) {
            return style.copyWith(color: AppColor.primary);
          }

          if (states.contains(MaterialState.disabled)) {
            return style.copyWith(color: AppColor.white70);
          }

          return style.copyWith(color: AppColor.white70);
        }),
        labelStyle: MaterialStateTextStyle.resolveWith((states) {
          TextStyle style = const TextStyle();

          if (states.contains(MaterialState.error)) {
            return style.copyWith(color: Colors.red);
          }
          if (states.contains(MaterialState.focused)) {
            return style.copyWith(color: AppColor.primary);
          }

          if (states.contains(MaterialState.disabled)) {
            return style.copyWith(color: AppColor.white70);
          }

          return style.copyWith(color: AppColor.white70);
        }),
        border: MaterialStateOutlineInputBorder.resolveWith(
          (states) {
            UnderlineInputBorder inputBorder = const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.white70),
            );

            if (states.contains(MaterialState.error)) {
              return inputBorder.copyWith(
                borderSide: const BorderSide(color: Colors.red),
              );
            }

            if (states.contains(MaterialState.focused)) {
              return inputBorder.copyWith(
                borderSide: const BorderSide(color: AppColor.primary),
              );
            }

            if (states.contains(MaterialState.disabled)) {
              return inputBorder.copyWith(
                borderSide: const BorderSide(color: AppColor.white70),
              );
            }

            return inputBorder;
          },
        ),
      );

  static TextSelectionThemeData get textSelectionTheme =>
      const TextSelectionThemeData(
        cursorColor: AppColor.primary,
      );
}
