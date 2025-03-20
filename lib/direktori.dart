import 'package:flutter/material.dart';
import 'paparan_utama.dart';
import 'package:myjpj/peti_masuk.dart';
import 'package:myjpj/profil.dart';
import 'settings.dart';

class Direktori extends StatelessWidget {
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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            child: Container(
              color: const Color(0xFF2D2DB1),
              width: double.infinity, // Ensures the container stretches fully
              padding: const EdgeInsets.only(
                  left: 35,
                  top: 10,
                  bottom: 24), // Adds spacing around the text
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns text to the left
                children: [
                  const Text(
                    'Direktori JPJ', // Fixed typo from 'Direkroti'
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Cawangan JPJ Di Seluruh Negara',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Column(
                  children: [
                    Card(
                      //johor
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/johor.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Johor',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //kedah
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/kedah.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Kedah',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //kelantan
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/kelantan.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Kelantan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //melaka
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/melaka.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Melaka',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //negeri sembilan
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/ns.jpg'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Negeri Sembilan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true, // Ensures words wrap properly
                              overflow: TextOverflow
                                  .visible, // Makes sure no text is cut off
                            )
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //pahang
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/pahang.jpg'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Pahang',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true, // Ensures words wrap properly
                              overflow: TextOverflow
                                  .visible, // Makes sure no text is cut off
                            )
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //pulau pinang
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/penang.jpg'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Pulau Pinang',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true, // Ensures words wrap properly
                              overflow: TextOverflow
                                  .visible, // Makes sure no text is cut off
                            )
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //perak
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/perak.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Perak',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //perlis
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/perlis.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Perlis',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //selangor
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/selangor.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Selangor',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //terengganu
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/terengganu.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Terengganu',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //sabah
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/sabah.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Sabah',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //sarawak
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/sarawak.jpg'),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Johor',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //kl
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/kl.jpg'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'W.P.Kuala Lumpur',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true, // Ensures words wrap properly
                              overflow: TextOverflow
                                  .visible, // Makes sure no text is cut off
                            )
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //labuan
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/labuan.jpg'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'W.P.Labuan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true, // Ensures words wrap properly
                              overflow: TextOverflow
                                  .visible, // Makes sure no text is cut off
                            )
                          ],
                        ),
                      ),
                    ),
                    /////////////////////////////////////////////////////////////////////////////////////////////////
                    Card(
                      //putrajaya
                      elevation: 4, // Adds shadow for a better look
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(16), // Spacing inside the card
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/putrajaya.jpg'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'W.P.Putrajaya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true, // Ensures words wrap properly
                              overflow: TextOverflow
                                  .visible, // Makes sure no text is cut off
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
