import 'package:flutter/material.dart';
import 'paparan_utama.dart';
import 'settings.dart';
import 'package:myjpj/direktori.dart';
import 'package:myjpj/profil.dart';

class PetiMasuk extends StatefulWidget {
  @override
  _PetiMasukState createState() => _PetiMasukState();
}

class _PetiMasukState extends State<PetiMasuk> {
  final List<Map<String, dynamic>> messages = [
    {
      "title": "Tamat Tempoh Cukai Jalan",
      "date": "19 Mac",
      "description":
          "Cukai jalan anda akan tamat tempoh pada 26 Mac 2025. Perbaharui sekarang untuk mengelakkan penalti.",
      "isStarred": true,
      "isRead": false,
    },
    {
      "title": "Sistem Penyelenggaraan",
      "date": "15 Mac",
      "description":
          "Sistem dijadualkan pada tarikh 28 Mac 2025. Beberapa perkhidmatan mungkin tidak tersedia.",
      "isStarred": false,
      "isRead": false,
    },
    {
      "title": "Tamat Tempoh Lesen Memandu",
      "date": "11 Mar",
      "description":
          "Lesen memandu anda akan tamat tempoh tidak lama lagi. Perbaharui sebelum 18 Mac 2025.",
      "isStarred": false,
      "isRead": false,
    },
    {
      "title": "Kemaskini Ciri Baharu",
      "date": "6 Feb",
      "description": "Kini anda boleh menyemak kesahihan cukai jalan",
      "isStarred": false,
      "isRead": false,
    },
    {
      "title": "Tamat Tempoh Cukai Jalan",
      "date": "19 Mac",
      "description":
          "Cukai jalan anda akan tamat tempoh pada 26 Mac 2025. Perbaharui sekarang untuk mengelakkan penalti.",
      "isStarred": false,
      "isRead": false,
    },
    {
      "title": "Sistem Penyelenggaraan",
      "date": "15 Mac",
      "description":
          "Sistem dijadualkan pada tarikh 28 Mac 2025. Beberapa perkhidmatan mungkin tidak tersedia.",
      "isStarred": false,
      "isRead": false,
    },
    {
      "title": "Tamat Tempoh Lesen Memandu",
      "date": "11 Mar",
      "description":
          "Lesen memandu anda akan tamat tempoh tidak lama lagi. Perbaharui sebelum 18 Mac 2025.",
      "isStarred": false,
      "isRead": false,
    },
    {
      "title": "Kemaskini Ciri Baharu",
      "date": "6 Feb",
      "description": "Kini anda boleh menyemak kesahihan cukai jalan",
      "isStarred": false,
      "isRead": false,
    },
  ];

  // toggleStar function
  void toggleStar(int index) {
    setState(() {
      messages[index]["isStarred"] = !messages[index]["isStarred"];
    });
  }

  // markAsRead function
  void markAsRead(int index) {
    setState(() {
      messages[index]["isRead"] = true;
    });
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            child: Container(
              color: const Color(0xFF2D2DB1),
              width: double.infinity, // Ensures the container stretches fully
              padding: const EdgeInsets.only(left: 35, top: 10, bottom: 24), // Adds spacing around the text
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns text to the left
                children: [
                  const Text(
                    'Peti Masuk', // Fixed typo from 'Direkroti'
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ),
          // Filter tabs
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // All (5) tab
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'All (5)',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Starred (1) tab
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Starred (1)',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Message list
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: messages.length,
              separatorBuilder: (context, index) => Divider(
                height: 0.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              itemBuilder: (context, index) {
                final message = messages[index];
                return GestureDetector(
                  onTap: () => markAsRead(index),
                  child: Container(
                    color: message["isRead"]
                        ? Colors.grey[200]
                        : (index % 2 == 0 ? Colors.white : Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // JPJ logo
                          Image.asset('assets/jpjlogo.png', height: 35),
                          // Message content
                          SizedBox(width: 13),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    Expanded(
                                      child: Text(
                                        message["title"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      message["date"],
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                // Description
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        message["description"],
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),

                                    // Star icon
                                    GestureDetector(
                                      onTap: () => toggleStar(index),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Icon(
                                          message["isStarred"]
                                              ? Icons.star
                                              : Icons.star_outline,
                                          size: 16,
                                          color: message["isStarred"]
                                              ? Colors.blue[900]
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
}
