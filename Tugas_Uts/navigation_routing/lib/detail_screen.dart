import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int itemIndex;

  DetailScreen({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    String content = getContent(itemIndex);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail Item '),
            SizedBox(width: 5),
            Text(
              '$itemIndex',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                content,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getContent(int index) {
    switch (index) {
      case 1:
        return 'Tiket pesawat promo Lebaran jurusan Palangkaraya adalah tiket dengan harga diskon khusus untuk perjalanan udara selama musim Lebaran menuju Palangkaraya, ibu kota Provinsi Kalimantan Tengah, Indonesia. Tiket ini menawarkan kesempatan kepada penumpang untuk merayakan hari raya bersama keluarga atau melakukan perjalanan wisata dengan biaya yang lebih terjangkau. Dengan tiket promo ini, penumpang dapat menikmati perjalanan yang nyaman dan aman ke destinasi mereka selama masa liburan Lebaran.';
      case 2:
        return 'Nikmati promo tiket pesawat spesial untuk liburan Lebaran ke Banjarmasin! Terbanglah dengan nyaman dan aman ke destinasi favorit Anda dengan harga istimewa. Jangan lewatkan kesempatan untuk merencanakan perjalanan Anda dan buat kenangan tak terlupakan di kota eksotis Banjarmasin. Segera pesan tiket Anda sekarang sebelum kehabisan!';
      case 3:
        return 'Tiket pesawat promo Lebaran jurusan Surabaya adalah tiket penerbangan yang ditawarkan dengan harga diskon khusus untuk periode Lebaran, yang merupakan salah satu momen tersibuk dalam tahun bagi masyarakat Indonesia. Tiket ini memungkinkan penumpang untuk terbang dari berbagai kota ke Surabaya dengan tarif yang lebih terjangkau dibandingkan harga reguler. Dalam tiket ini, penumpang dapat menikmati perjalanan yang nyaman dan aman dengan maskapai penerbangan terpercaya, serta fasilitas standar seperti bagasi terbatas dan makanan ringan di dalam pesawat. Jangan lewatkan kesempatan ini untuk merencanakan liburan Lebaran yang menyenangkan dengan tiket pesawat promo ini.';
      case 4:
        return 'Tiket pesawat promo Lebaran jurusan Bandung adalah tiket penerbangan dengan harga diskon khusus untuk periode liburan Lebaran yang menuju ke Bandung. Tiket ini memberikan kesempatan kepada penumpang untuk menikmati perjalanan dengan biaya lebih terjangkau saat momen liburan paling ramai di Indonesia. Dengan tiket ini, penumpang dapat merencanakan perjalanan mereka ke Bandung dengan lebih hemat, memungkinkan mereka untuk menjelajahi keindahan dan kebudayaan kota tersebut tanpa harus mengeluarkan biaya yang terlalu besar.';
      case 5:
        return 'Tiket pesawat promo Lebaran jurusan Jakarta adalah penawaran spesial yang ditawarkan oleh maskapai penerbangan untuk perjalanan selama musim Lebaran. Tiket ini menawarkan harga yang lebih terjangkau dibandingkan dengan harga reguler untuk perjalanan ke dan dari Jakarta selama periode Lebaran. Dengan tiket ini, penumpang dapat menikmati perjalanan yang nyaman dan efisien ke ibu kota Indonesia selama musim liburan yang sibuk ini.';
      default:
        return 'Detail for item $index'; // Default case
    }
  }
}