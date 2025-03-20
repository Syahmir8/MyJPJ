import 'package:flutter/material.dart';
import 'package:myjpj/direktori.dart';
import 'package:myjpj/settings.dart';
import 'package:myjpj/peti_masuk.dart';
import 'package:myjpj/profil.dart';
import 'paparan_utama.dart';
import 'pemilikan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LesenKenderaan(),
    );
  }
}

class LesenKenderaan extends StatelessWidget {
  const LesenKenderaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF2B32B2),
          flexibleSpace: Padding(
            padding: EdgeInsets.only(top: 65, left: 12, right: 12),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => PaparanUtama()),
                      (route) => false,
                    );
                  },
                  child: Icon(Icons.arrow_back, size: 30, color: Colors.white),
                ),
                SizedBox(width: 8),
                Image.asset('assets/jatanegara.png',
                    width: 40, height: 40, fit: BoxFit.cover),
                SizedBox(width: 8),
                Image.asset('assets/jpjlogo.png',
                    width: 40, height: 40, fit: BoxFit.cover),
                SizedBox(width: 9),
                Icon(Icons.language_outlined, size: 30, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.help, size: 30, color: Colors.white),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                  child: Icon(Icons.menu, size: 30, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildInfoSection(),
            const SizedBox(height: 10),
            Container(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    licenseTab(context, "Lesen Memandu", false, Profil()),
                    licenseTab(context, "Lesen Kenderaan Motor", true, null),
                    licenseTab(context, "Sijil Pemilikan Kenderaan", false, Pemilikan()),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildRegenerateButton(),
            const SizedBox(height: 10),
            _buildVehicleDropdown(),
            const SizedBox(height: 10),
            const Text('Dijana pada 12-03-2025',
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            const Text('Tiada Maklumat Kenderaan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF2B32B2),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => PaparanUtama()),
              (route) => false,
            );
          } else if (index == 1) {
            // Corrected index for "Profil"
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => PetiMasuk()),
              (route) => false,
            );
          } else if (index == 2) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Direktori()),
              (route) => false,
            );
          } else if (index == 3) {
            // Corrected index for "Profil"
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Profil()),
              (route) => false,
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Utama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_rounded),
            label: 'Peti Masuk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_rounded),
            label: 'Direktori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _buildVehicleDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
        hint: const Text('--Sila Pilih Kenderaan--'),
        items: ['--Sila Pilih Kenderaan--', 'BMFXXXX'].map((String value) {
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
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(18),
        bottomRight: Radius.circular(18),
      ),
      child: Container(
        color: const Color(0xFF2B32B2),
        padding: const EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SYAFIQA ANEESA BINTI JOHARI',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    'Orang Awam Malaysia',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'syafigajohari@gmail.com',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'STANDARD',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget licenseTab(
      BuildContext context, String title, bool isSelected, Widget? page) {
    return Expanded(
      child: GestureDetector(
        onTap: page != null
            ? () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => page))
            : null,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: isSelected ? const Color(0xFF2B32B2) : Colors.white,
          ),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabButton(
      BuildContext context, String text, bool isSelected, Widget? page) {
    return Expanded(
      child: GestureDetector(
        onTap: page != null
            ? () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => page),
                );
              }
            : null, // If `page` is null, do nothing
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
}
