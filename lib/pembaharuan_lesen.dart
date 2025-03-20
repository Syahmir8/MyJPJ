import 'package:flutter/material.dart';
import 'package:myjpj/direktori.dart';
import 'paparan_utama.dart';
import 'package:myjpj/peti_masuk.dart';
import 'package:myjpj/profil.dart';
import 'settings.dart';

class PembaharuanLesen extends StatefulWidget {
  @override
  _PembaharuanLesenState createState() => _PembaharuanLesenState();
}

class _PembaharuanLesenState extends State<PembaharuanLesen> {
  String? selectedLicense;
  int renewalYears = 1;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
              child: Container(
                color: Color(0xFF2B32B2),
                height: 75,
                child: Center(
                  child: Text(
                    'Pembaharuan Lesen Memandu',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name & Identification Number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nama',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('SYAFIQA ANEESA BINTI JOHARI'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('No. Pengenalan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('030909058268'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 1),
                  SizedBox(height: 10),

                  // License Type Dropdown
                  Text('Jenis Lesen',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color of the dropdown
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), // Shadow color
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 3), // Position of the shadow
                        ),
                      ],
                    ),
                    child: DropdownButtonFormField<String>(
                      value: selectedLicense,
                      dropdownColor: Colors
                          .white, // White background for the dropdown menu
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors
                            .white, // Background color inside the input field
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none, // Removes default border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2), // Border when focused
                        ),
                      ),
                      hint: Text("Pilih Lesen"),
                      items: ['B2', 'D', 'B2, D']
                          .map((String license) => DropdownMenuItem(
                                value: license,
                                child: Text(license),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedLicense = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  // Expiry Date & Class
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tarikh Luput',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('2027 - 09 - 12'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kelas Lesen',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('B2, D'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 1),
                  SizedBox(height: 10),

                  // License Renewal Duration
                  Text('Tempoh Pembaharuan Lesen (Tahun)',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (renewalYears > 1) {
                            setState(() {
                              renewalYears--;
                            });
                          }
                        },
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          renewalYears.toString(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            renewalYears++;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Renewal Details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tarikh Mula Baharu',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('13/3/2023'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tarikh Luput Baharu',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('9/9/2024'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Amaun Penyelarasaan (RM)',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('0.00'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Amaun Lesen (RM)',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('30.00'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jumlah Amaun (RM)',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('30.00'),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Aligns everything to the left
                    children: [
                      Text(
                        'Mod Bayaran',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceEvenly, // Keeps images evenly spaced
                        children: [
                          Expanded(
                            child: Container(
                              height: 80, // Set a fixed height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                                image: DecorationImage(
                                  image: AssetImage('assets/visa.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 80, // Same height as the first container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    12), // Rounded corners
                                image: DecorationImage(
                                  image: AssetImage('assets/fpx.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
