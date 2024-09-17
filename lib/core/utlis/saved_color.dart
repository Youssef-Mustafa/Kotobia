import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Helper method to save color preference
Future<void> saveHeartColor(Color color) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('heartColor', color.value);
}

// Helper method to load color preference
Future<Color> loadHeartColor() async {
  final prefs = await SharedPreferences.getInstance();
  final colorValue = prefs.getInt('heartColor') ??
      Colors.white.value; // Default to white if not set
  return Color(colorValue);
}
