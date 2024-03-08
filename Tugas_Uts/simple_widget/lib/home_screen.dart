import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import DetailScreen widget

class HomeScreen extends StatelessWidget {
  final List<String> itemTitles = [ // List of item titles
    'Palangkaraya (PKY)',
    'Banjarmasin (BJM)',
    'Surabaya (SBY)',
    'Bandung (BDG)',
    'Jakarta (JKT)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tiket Pesawat Promo Lebaran')),
      body: ListView.builder(
        itemCount: itemTitles.length, // Use length of itemTitles
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itemTitles[index]), // Use itemTitles[index] for title
            onTap: () {
              // Navigasi ke DetailScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    itemIndex: index + 1, // Send index + 1 to DetailScreen
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}