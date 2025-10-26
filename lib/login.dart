import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            padding: const EdgeInsets.all(25.0),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Header (Tema Absensi Sekolah)
                const Icon(
                  Icons.school, // Ikon sekolah
                  size: 60,
                  color: Colors.blue,
                ),
                const SizedBox(height: 10),
                // Custom Font: Judul tebal
                const Text(
                  'Absensi Digital Sekolah',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Masuk sebagai Siswa atau Guru',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 30),

                // Input ID Pengguna (NIS/NIP)
                _buildInputField(
                  hintText: 'Masukkan NIS atau NIP',
                  labelText: 'ID Pengguna',
                  icon: Icons.person,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),

                // Input Kata Sandi
                _buildInputField(
                  hintText: 'Masukkan kata sandi',
                  labelText: 'Kata Sandi',
                  icon: Icons.lock,
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 10),

                // Lupa Kata Sandi
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Aksi Lupa Kata Sandi
                    },
                    child: const Text(
                      'Lupa Kata Sandi?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Tombol MASUK (Custom Design: Warna Hijau)
                ElevatedButton(
                  onPressed: () {
                    // Aksi Login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.green, // Warna Hijau untuk tombol aksi utama
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'MASUK',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Footer
                const Text(
                  '© 2024 Absensi Sekolah. Semua Hak Dilindungi.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi pembantu untuk membuat TextFormField
  Widget _buildInputField({
    required String hintText,
    required String labelText,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    bool isPassword = false,
  }) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword,
      // Custom Design: Input dengan ikon
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(icon, color: Colors.blue),
      ),
    );
  }
}
