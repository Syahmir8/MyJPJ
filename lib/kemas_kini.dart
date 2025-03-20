import 'package:flutter/material.dart';
import 'paparan_utama.dart';
import 'package:myjpj/direktori.dart';
import 'package:myjpj/peti_masuk.dart';
import 'package:myjpj/profil.dart';

class KemasKini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
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
                Icon(Icons.menu, size: 30, color: Colors.white),
              
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleSection(title: 'Kemaskini Profil'),
            const KemaskiniProfil(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF2B32B2),
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class KemaskiniProfil extends StatelessWidget {
  const KemaskiniProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Column(
        children: [
          buildProfileField(Icons.person_outline_rounded, 'No. MyKad', '717171-11-3333'),
          SizedBox(height: 30),
          buildProfileField(Icons.person_outline_rounded, 'Nama', 'SYAFIQA ANEESA'),
          SizedBox(height: 30),
          buildProfileField(Icons.email_outlined, 'Email', 'irfani.shamsul@gmail.com'),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Sila kemaskini maklumat anda di Portal Awam JPJ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileField(IconData icon, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE0E0E0)),
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFF7F5FF),
          ),
          child: Row(
            children: [
              Icon(icon, color: Color(0xFF2B32B2)),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF2B32B2),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0, // You may need to update this dynamically
      onTap: (index) {
        if (index == 0) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => PaparanUtama()),
            (route) => false,
          );
        } else if (index == 1) {
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
    );
  }
}
