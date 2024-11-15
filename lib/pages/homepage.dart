import 'package:flutter/material.dart';
import 'package:uts_pemmob/controllers/home_controllers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengenalan Wisata Indonesia Untuk Daerah Bali dan Yogyakarta'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Selamat datang di aplikasi wisata Indonesia Untuk Daerah Bali dan Yogyakarta!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text('Destinasi Wisata 2 Daerah'),
            subtitle: Text('Destinasi Wisata Bali dan Yogyakarta'),
            leading: Icon(Icons.place, color: Colors.teal),
            onTap: () {
              HomeController.navigateToPage(context, 'DestinationPage');
            },
          ),
          ListTile(
            title: Text('Aksesibilitas Informasi Wisata Bali dan Yogyakarta'),
            subtitle: Text('Menyediakan informasi wisata yang akurat dan terstruktur.'),
            leading: Icon(Icons.info, color: Colors.teal),
            onTap: () {
              HomeController.navigateToPage(context, 'InformationPage');
            },
          ),
          ListTile(
            title: Text('Pengalaman Pengguna yang Lebih Baik'),
            subtitle: Text('Antarmuka ramah pengguna dan fitur sesuai kebutuhan wisatawan.'),
            leading: Icon(Icons.explore, color: Colors.teal),
            onTap: () {
              HomeController.navigateToPage(context, 'UserExperiencePage');
            },
          ),
        ],
      ),
    );
  }
}
