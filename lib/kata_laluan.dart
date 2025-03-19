import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangePasswordScreen(),
    );
  }
}

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscureOldPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom Top Bar
          Container(
            color: const Color(0xFF283593), // Deep blue color
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side icons
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Image.asset('assets/government.png', height: 45),
                            const SizedBox(width: 10),
                            Image.asset('assets/jpj.png', height: 45),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.language,
                              color: Colors.white,
                              size: 35,
                            ),
                            const SizedBox(width: 6),
                            const Icon(
                              Icons.question_answer,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                        // Right side menu icon
                        const Icon(Icons.menu, color: Colors.white, size: 28),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.white24,
                    height: 1,
                    thickness: 0.5,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Tukar Kata Laluan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Password Change Form Section
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sila pastikan kata laluan anda mematuhi struktur berikut:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '1. Panjang minimum 8 aksara\n'
                        '2. Panjang maksimum 12 aksara\n'
                        '3. Sekurang-kurangnya satu huruf besar\n'
                        '4. Sekurang-kurangnya satu huruf kecil\n'
                        '5. Sekurang-kurangnya satu nombor\n'
                        '6. Sekurang-kurangnya satu daripada aksara ini (! @ # \$ ^ * &)\n'
                        '7. Tidak boleh menggunakan ID Pengguna / Nombor Pengenalan',
                        style: TextStyle(color: Colors.black87),
                      ),
                      const SizedBox(height: 20),

                      _buildPasswordField(
                        'Kata Laluan Lama',
                        _oldPasswordController,
                        _obscureOldPassword,
                        () {
                          setState(() {
                            _obscureOldPassword = !_obscureOldPassword;
                          });
                        },
                      ),
                      const SizedBox(height: 10),

                      _buildPasswordField(
                        'Kata Laluan Baharu',
                        _newPasswordController,
                        _obscureNewPassword,
                        () {
                          setState(() {
                            _obscureNewPassword = !_obscureNewPassword;
                          });
                        },
                      ),
                      const SizedBox(height: 10),

                      _buildPasswordField(
                        'Pengesahan Kata Laluan Baharu',
                        _confirmPasswordController,
                        _obscureConfirmPassword,
                        () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                      const SizedBox(height: 20),

                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Lupa Kata Laluan?',
                            style: TextStyle(color: Color(0xFF1929B3)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1929B3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Kata Laluan Berjaya Ditukar'),
                                ),
                              );
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              'Hantar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordField(
    String label,
    TextEditingController controller,
    bool obscureText,
    VoidCallback toggleVisibility,
  ) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          onPressed: toggleVisibility,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Ruangan ini wajib diisi';
        }
        return null;
      },
    );
  }
}
