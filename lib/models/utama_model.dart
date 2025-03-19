import 'package:flutter/material.dart';
import 'package:myjpj/paparan_utama.dart';
import 'package:myjpj/pembaharuan_lesen.dart';
import 'package:myjpj/semakansaman.dart';

class UtamaModel {
  String name;
  String iconPath;
  Widget route;

  UtamaModel({
    required this.name,
    required this.iconPath,
    required this.route,
  });

  static List<UtamaModel>getPelesenanKenderaan() {
    List<UtamaModel> pelesenan = [];

    pelesenan.add(
      UtamaModel(
        name: 'Bidaan Nombor Pendaftaran Kenderaan', 
        iconPath: 'assets/pic1.jpg',
        route: PaparanUtama(),
        ),
        
    );

    pelesenan.add(
      UtamaModel(
        name: 'Semakan Lesen Kenderaan Motor (LKM)', 
        iconPath: 'assets/pic4.jpg',
        route: PaparanUtama(),
        ),
    );

    pelesenan.add(
      UtamaModel(
        name: 'Pembaharuan Lesen Kenderaan Motor (LKM)', 
        iconPath: 'assets/pic5.jpg',
        route: PaparanUtama(),
        ),
    );

    pelesenan.add(
      UtamaModel(
        name: 'Semakan Nombor Pendaftaran Terkini', 
        iconPath: 'assets/pic6.jpg',
        route: PaparanUtama(),
        ),
       
    );

    return pelesenan;
  }

  static List<UtamaModel>getPelesenanPemandu() {
    List<UtamaModel> pelesenan = [];

    pelesenan.add(
      UtamaModel(
        name: 'Semakan Lesen Memandu', 
        iconPath: 'assets/pic2.jpg',
        route: PaparanUtama(),
        ),
        
    );

    pelesenan.add(
      UtamaModel(
        name: 'Pembaharuan Lesen Memandu', 
        iconPath: 'assets/pic7.jpg',
        route: PembaharuanLesen(),
        ),
    );

    pelesenan.add(
      UtamaModel(
        name: 'Semakan Keputusan Ujian', 
        iconPath: 'assets/pic8.jpg',
        route: PaparanUtama(),
        ),
    );

    pelesenan.add(
      UtamaModel(
        name: 'Permohonan CDL', 
        iconPath: 'assets/pic9.jpg',
        route: PaparanUtama(),
        ),   
    );

    pelesenan.add(
      UtamaModel(
        name: 'Semakan Kenderaan Program Khas Peralihan\nKelas B', 
        iconPath: 'assets/pic3.jpg',
        route: PaparanUtama(),
        ),   
    );

    return pelesenan;
  }

  static List<UtamaModel>getPenguatkuasaan() {
    List<UtamaModel> penguatkuasaan = [];

      penguatkuasaan.add(
        UtamaModel(
        name: 'Semakan Saman', 
        iconPath: 'assets/pic10.jpg',
        route: SemakanSaman(),
        ), 
      );

      penguatkuasaan.add(
        UtamaModel(
        name: 'Bayaran Saman', 
        iconPath: 'assets/pic11.jpg',
        route: PaparanUtama(),
        ), 
      );

      penguatkuasaan.add(
        UtamaModel(
        name: 'Semakan Mata Demerit', 
        iconPath: 'assets/pic12.jpg',
        route: PaparanUtama(),
        ), 
      );

      penguatkuasaan.add(
        UtamaModel(
        name: 'Semakan Status Senarai Hitam', 
        iconPath: 'assets/pic13.jpg',
        route: PaparanUtama(),
        ), 
      );

    return penguatkuasaan;
  }

  static List<UtamaModel>getPerkhidmatanUmum() {
    List<UtamaModel> perkhidmatan = [];

    perkhidmatan.add(
      UtamaModel(
        name: 'JPJeQ', 
        iconPath: 'assets/pic14.jpg',
        route: PaparanUtama(),
        ), 
    );

    perkhidmatan.add(
      UtamaModel(
        name: 'Sejarah Transaksi', 
        iconPath: 'assets/pic15.jpg',
        route: PaparanUtama(),
        ), 
    );

    perkhidmatan.add(
      UtamaModel(
        name: 'e-Aduan@JPJ', 
        iconPath: 'assets/pic16.jpg',
        route: PaparanUtama(),
        ), 
    );

    return perkhidmatan;
  }
}
