import 'package:flutter/material.dart';

class SemakanSamanScreen extends StatefulWidget {
  const SemakanSamanScreen({Key? key}) : super(key: key);

  @override
  State<SemakanSamanScreen> createState() => _SemakanSamanScreenState();
}

class _SemakanSamanScreenState extends State<SemakanSamanScreen> {
  final TextEditingController _registrationController = TextEditingController();

  @override
  void dispose() {
    _registrationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F3EAA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/malaysia.png',
                  width: 50,
                  height: 60,
                ),
                const SizedBox(width: 8),
                Image.asset('assets/images/jpj.png', width: 40, height: 40),
                const SizedBox(width: 8),
                const Icon(Icons.language, color: Colors.white, size: 40),
                const SizedBox(width: 16),
                Image.asset('assets/images/faq.png', width: 40, height: 40),
                const SizedBox(width: 8),
              ],
            ),
          ),

          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white, size: 40),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Blue header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            color: const Color(0xFF2F3EAA),
            child: const Text(
              'Semakan Saman',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // User profile section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                // User avatar
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2F6DAA),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 10),

                // User name
                const Text(
                  'Mohamad messi Bin Hazard',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),

                // ID Card
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2F6DAA),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.credit_card, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '05010051339',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
          const SizedBox(height: 40),
          // Registration number input
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Masukkan Nombor Pendaftaran Kenderaan:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _registrationController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle search logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2F3EAA),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Cari',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Spacer to push the bottom nav bar to the bottom
          const Spacer(),

          // Bottom navigation bar
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(Icons.home, 'Utama', false),
                _buildNavItem(Icons.mail, 'Peti Masuk', false),
                _buildNavItem(Icons.people, 'Direktori', false),
                _buildNavItem(Icons.person, 'Profil', true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isSelected) {
    return Container(
      width: 80,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border:
            isSelected
                ? const Border(
                  bottom: BorderSide(color: Color(0xFF2F3EAA), width: 3),
                )
                : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? const Color(0xFF2F3EAA) : Colors.grey,
            size: 24,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? const Color(0xFF2F3EAA) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// Add this to your main.dart to preview the screen
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Semakan Saman',
      theme: ThemeData(
        primaryColor: const Color(0xFF2F3EAA),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2F3EAA)),
      ),
      home: const SemakanSamanScreen(),
    );
  }
}
