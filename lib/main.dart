import 'package:flutter/material.dart';
import 'package:expense_tracker/Widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(98, 196, 26, 100));

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        //scaffoldBackgroundColor: Colors.blueAccent),
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 25,
              ),
              bodyLarge: TextStyle(
                color: kColorScheme.tertiary,
                fontSize: 26,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
