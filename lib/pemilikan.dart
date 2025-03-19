import 'package:flutter/material.dart';

class LicenseOwnershipPage extends StatelessWidget {
  const LicenseOwnershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header with icons and title
          Container(
            color: Color(0xFF283593), // Deep blue color
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_back, color: Colors.white, size: 24),
                            SizedBox(width: 10),
                            Image.asset('assets/jata.png', height: 40),
                            SizedBox(width: 5),
                            Image.asset('assets/jpj.png', height: 40),
                            SizedBox(width: 10),
                            Icon(Icons.language, color: Colors.white, size: 28),
                             SizedBox(width: 10),
                            Icon(Icons.question_answer, color: Colors.white, size: 28),
                          ],
                        ),
                        Icon(Icons.menu, color: Colors.white, size: 28),
                      ],
                    ),
                  ),
                  Divider(color: Colors.white24, height: 1, thickness: 0.5),
                ],
              ),
            ),
          ),
          
          // Profile Section
          Container(
            width: double.infinity,
            color: Colors.blue[900],
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('SYAFIQA ANEESA BINTI JOHARI', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text('030303011234', style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 4),
                Text('Orang Awam Malaysia', style: TextStyle(color: Colors.white70, fontSize: 14)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTabButton('Lesen Memandu', false),
                _buildTabButton('Lesen Kenderaan Motor', false),
                _buildTabButton('Sijil Pemilikan Kenderaan', true),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.refresh, color: Colors.black),
            label: Text('Jana Semula', style: TextStyle(color: Colors.black)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              side: BorderSide(color: Colors.black),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
          SizedBox(height: 10),
          Text('Dijana pada 12-03-2025', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 30),
          Text('Tiada Maklumat Kenderaan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Utama'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Peti Masuk'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Direktori'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

  Widget _buildTabButton(String text, bool isSelected) {
    return Expanded(
      child: Container(
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[900] : Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
