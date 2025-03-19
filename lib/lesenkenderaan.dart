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
      home: const VehicleInfoPage(),
    );
  }
}

class VehicleInfoPage extends StatelessWidget {
  const VehicleInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[900],
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {},
            ),
            Image.asset('assets/jata_negara.png', height: 30),
            const SizedBox(width: 8),
            Image.asset('assets/jpj_logo.png', height: 30),
            const SizedBox(width: 8),
            const Icon(Icons.language, color: Colors.white),
            const SizedBox(width: 8),
            const Icon(Icons.question_answer, color: Colors.white),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildInfoSection(),
            const SizedBox(height: 10),
            _buildTabButtons(),
            const SizedBox(height: 20),
            _buildRegenerateButton(),
            const SizedBox(height: 10),
            _buildVehicleDropdown(),
            const SizedBox(height: 10),
            const Text('Dijana pada 12-03-2025 ACAP', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            const Text('Tiada Maklumat Kenderaan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildVehicleDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
        hint: const Text('--Sila Pilih Kenderaan--'),
        items: ['--Sila Pilih Kenderaan--','BMFXXXX'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {},
      ),
    );
  }

  Widget _buildInfoSection() {
    return Container(
      width: double.infinity,
      color: Colors.blue[900],
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('SYAFIQA ANEESA BINTI JOHARI',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text('030303011234', style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 4),
          Text('Orang Awam Malaysia', style: TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildTabButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTabButton('Lesen Memandu', false),
          _buildTabButton('Lesen Kenderaan Motor', true),
          _buildTabButton('Sijil Pemilikan Kenderaan', false),
        ],
      ),
    );
  }

  Widget _buildTabButton(String text, bool isSelected) {
    return Expanded(
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 4),
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

  Widget _buildRegenerateButton() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.refresh, color: Colors.black),
      label: const Text('Jana Semula', style: TextStyle(color: Colors.black)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: const BorderSide(color: Colors.black),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.blue[900],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Utama'),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Peti Masuk'),
        BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Direktori'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}