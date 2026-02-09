import 'package:flutter/material.dart';
import 'screens/role_selection_screen.dart';

void main() {
  runApp(const BlueCollarApp());
}

class BlueCollarApp extends StatelessWidget {
  const BlueCollarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlueCollar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Defining the BlueCollar Brand Colors
        primaryColor: const Color(0xFF003366), // Navy Blue
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF003366),
          secondary: const Color(0xFFFF8C00), // Safety Orange
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Standard cleaner font
      ),
      home: const RoleSelectionScreen(),
    );
  }
}