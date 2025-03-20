import 'package:flutter/material.dart';
import 'kemas_kini.dart';
import 'kata_laluan.dart';
import 'paparan_utama.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top Section
          Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Color(0xFF2B32B2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => PaparanUtama()),
                      );
                    },
                    child: Icon(Icons.close, color: Colors.white, size: 28),
                  ),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/picture1.png'),
                ),
                SizedBox(height: 10),
                Text(
                  'SYAFIQA ANEESA BINTI JOHARI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '78101898726',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Orang Awam Malaysia',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          
          // Settings Options
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildSettingsOption(
                  context,
                  Icons.person,
                  'Kemas Kini Profil',
                  KemasKini(),
                ),
                _buildSettingsOption(
                  context,
                  Icons.lock,
                  'Tukar Kata Laluan',
                  KataLaluan(),
                ),
                _buildSettingsOption(
                  context,
                  Icons.policy,
                  'Dasar Privasi',
                  null,
                ),
                _buildSettingsOption(
                  context,
                  Icons.description,
                  'Terma Penggunaan',
                  null,
                ),
                _buildSettingsOption(
                  context,
                  Icons.delete,
                  'Penutupan Akaun',
                  null,
                ),
                _buildSettingsOption(
                  context,
                  Icons.share,
                  'Kongsi Aplikasi',
                  null,
                ),
                _buildSettingsOption(
                  context,
                  Icons.exit_to_app,
                  'Log Keluar',
                  null,
                  isLogout: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsOption(BuildContext context, IconData icon, String title, Widget? page, {bool isLogout = false}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: ListTile(
        leading: Icon(icon, color: isLogout ? Colors.red : Colors.black),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isLogout ? Colors.red : Colors.black,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: page != null
            ? () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              }
            : null,
      ),
    );
  }
}
