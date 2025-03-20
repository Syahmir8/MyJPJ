import 'package:flutter/material.dart';
import 'paparan_utama.dart';
import 'package:myjpj/direktori.dart';
import 'package:myjpj/peti_masuk.dart';
import 'package:myjpj/settings.dart';
import 'package:myjpj/lesenkenderaan.dart';
import 'package:myjpj/pemilikan.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
              child: Container(
                color: Color(0xFF2B32B2),
                padding: EdgeInsets.all(18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 18),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SYAFIQA ANEESA BINTI JOHARI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Text(
                            'Orang Awam Malaysia',
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'syafigajohari@gmail.com',
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'STANDARD',
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text("Orang Awam Malaysia",
                style: TextStyle(fontSize: 14, color: Colors.black54)),
            const SizedBox(height: 10),
            Container(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    licenseTab(context, "Lesen Memandu", true, null),
                    licenseTab(context, "Lesen Kenderaan Motor", false,
                        LesenKenderaan()),
                    licenseTab(context, "Sijil Pemilikan Kenderaan", false,
                        Pemilikan()),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF59E0B),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              ),
              child: const Text("Jana Semula",
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 5),
            const Text("Dijana pada 12-03-2025",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
            const SizedBox(height: 10),
            Image.asset("assets/lesen.jpg", height: 150),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 192, 221, 255), // Darkened to show it's selected
                    foregroundColor: const Color.fromARGB(
                        255, 0, 0, 0), // Text color on dark background
                    side: BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text("Hadapan"),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, // Normal background
                    foregroundColor: Colors.black, // Text color
                    side: BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text("Belakang"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF59E0B)),
              child: const Text("Paparan Penuh",
                  style: TextStyle(color: Colors.white)),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Sila hadir ke kaunter JPJ berdekatan untuk kemaskini gambar (jika berkaitan)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF16A34A)),
              child: const Text("BERKUAT KUASA",
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Image.asset("assets/qr_code.jpg", height: 150),
                  const SizedBox(height: 10),
                  const Text("Untuk tujuan pengesahan sahaja",
                      style: TextStyle(fontSize: 12, color: Colors.black87)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2B32B2)),
              child: const Text("Pembaharuan",
                  style: TextStyle(color: Colors.white)),
            ),
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
}
