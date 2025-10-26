import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login yang sudah dipisah

void main() {
  runApp(const SchoolAttendanceApp());
}

class SchoolAttendanceApp extends StatelessWidget {
  const SchoolAttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Custom Design: Tema warna biru sekolah dengan aksen hijau
    return MaterialApp(
      title: 'Absensi Sekolah',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color: Biru
        fontFamily: 'Poppins', // Opsional: jika font sudah di-import
        scaffoldBackgroundColor: const Color(0xFFF4F7F8), // Latar belakang umum
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blueAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          ),
        ),
      ),
      home: const LoginPage(), // Set LoginPage sebagai halaman utama
    );
  }
}
