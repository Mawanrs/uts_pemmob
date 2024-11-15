import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() {
  runApp(PengenalanWisataIndonesiaApp());
}

/// Root widget of the application.
class PengenalanWisataIndonesiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengenalan Wisata Indonesia Untuk Daerah Bali dan Yoygakarta',
      debugShowCheckedModeBanner: false,
      theme: _buildThemeData(),
      home: HomePage(),
    );
  }

  /// Custom theme data for the app
  ThemeData _buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.teal,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.teal,
        elevation: 4,
        centerTitle: true,  // Centers the title in the AppBar
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.grey[700]),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal, 
          foregroundColor: Colors.white,
          textStyle: TextStyle(fontSize: 16),
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: Colors.teal,
        textColor: Colors.black,
      ),
    );
  }
}
