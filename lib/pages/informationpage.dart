import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final List<Map<String, dynamic>> destinations = [
    {
      "name": "Bali",
      "description": "Bali, pulau dewata dengan pantai yang indah, budaya yang kaya, dan berbagai tempat wisata alam dan spiritual.",
      "isFavorite": false,
      "places": [
        {
          "name": "Pura Gunung Kawi",
          "imageAsset": "lib/assets/images/1.jpg",
          "description": "Salah satu situs arkeologi paling paling unik di Pulau Bali adalah Pura Gunung Kawi yang terdiri dari koleksi relief kuno yang diukir di atas permukaan tebing batu. Dengan mengunjungi situs ini, Sobat Pesona akan disuguhi pemandangan Sungai Pakerisan yang menakjubkan serta halaman Pura yang bernuansa Pura Hindu kuno dengan sentuhan modern. Pura ini mudah ditemukan dan merupakan destinasi yang penting untuk ditambahkan ke rencana perjalanan Sobat Pesona di Bali. Sebelum memasuki situs, Sobat Pesona akan menaiki anak tangga, dan akan ditawarkan vas dari tanah yang berisikan air suci dimana Sobat Pesona perlu memercikkannya air ke diri sendiri sebelum memasuki kompleks Pura. Pengalaman yang sangat eksotis ini, pantas mendapat tempat khusus dalam bucket list Sobat Pesona! Jadi tunggu apa lagi? Segera kunjungi Pura Gunung Kawi!"
        },
        {
          "name": "Campuhan Ridge Walk",
          "imageAsset": "lib/assets/images/2.jpg",
          "description": "Selain pesona ombaknya, Bali juga populer dengan wisata alam yang menakjubkan. Satu hal yang harus Sobat Pesona kunjungi adalah Campuhan Ridge Walk. Terletak di Ubud yang modern dan ramai, jalur pendakian lembah pegunungan yang indah ini jelas merupakan tempat yang terbaik untuk melepas penat dan menghirup udara segar.Di sepanjang perjalanan Sobat Pesona akan menempuh jalur perbukitan yang terbentang sepanjang 9 kilometer, Sobat Pesona akan ditemani oleh pemandangan lereng bukit yang paling menakjubkan dan lembah hijau Sungai Wos. Jika Sobat Pesona beruntung dan cuacanya cukup baik, Gunung Agung yang gagah menjulang di antara perbukitan dapat terlihat jelas. Lokasi ini memang benar-benar bisa menambah petualangan Sobat Pesona di Bali jadi indah dan menakjubkan!"
        },
        {
          "name": "Banyumala Twin Waterfall",
          "imageAsset": "lib/assets/images/3.jpg",
          "description": "Tidak hanya terkenal dan sering dikunjungi seperti berbagai tujuan wisata lainnya di Bali, Banyumala Twin Waterfall masih terjaga kelestariannya. Air terjun yang menakjubkan ini berada di jalan tepi kawah antara Munduk dan jalan utama dari Singaraja menuju Denpasar. Definisi “nothing worth having comes easy”, sesuai dengan sulitnya pendakian untuk mencari dan mencapainya, tetapi Sobat Pesona akan terpuaskan ketika sampai pada lokasi ini. Sepanjang perjalan Sobat Pesona akan dikelilingi dengan hijaunya pepohonan, bebatuan dan sungai hingga Sobat Pesona mencapai air terjunnya. Kunjungi Banyumala Twin Waterfall untuk waktu relaksasi, dimana lokasi ini sangat cocok untuk bersantai selama liburan!"
        },
      ]
    },
    {
      "name": "Yogyakarta",
      "description": "Yogyakarta, kota budaya dan sejarah, terkenal dengan Candi Borobudur dan Candi Prambanan, serta pusat seni dan kerajinan.",
      "isFavorite": false,
      "places": [
        {
          "name": "Candi Borobudur",
          "imageAsset": "lib/assets/images/6.jpg",
          "description": "Destinasi pertama yang patut untuk dikunjungi saat pergi ke jogja adalah Candi Borobudur. Terletak di Magelang, sekitar 40 kilometer dari pusat kota Yogyakarta, Candi Borobudur merupakan monumen Buddha terbesar di dunia sekaligus masuk ke dalam salah satu situs warisan dunia yang diakui oleh UNESCO."
        },
        {
          "name": "Candi Prambanan",
          "imageAsset": "lib/assets/images/5.jpg",
          "description": "Adapun situs candi selanjutnya yang wajib untuk kunjungi adalah Candi Prambanan. Sama seperti Candi Borobudur, Candi Prambanan diakui oleh UNESCO sebagai salah satu situs warisan dunia yang paling mengesankan di Indonesia. "
        },
        {
          "name": "Malioboro",
          "imageAsset": "lib/assets/images/4.jpg",
          "description": "Malioboro adalah jalan utama yang terletak di pusat kota Yogyakarta dan menjadi pusat kegiatan perdagangan, pariwisata, dan kehidupan malam Dikenal sebagai pusat perbelanjaan tradisional, Malioboro menawarkan pengalaman wisata yang unik dengan berbagai toko, warung makan, dan atraksi budaya."
        },
      ]
    },
  ];

  void toggleFavorite(int index) {
    setState(() {
      destinations[index]['isFavorite'] = !destinations[index]['isFavorite'];
    });
  }

  void navigateToDetailPage(BuildContext context, Map<String, dynamic> destination) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(destination: destination),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Destinasi Wisata'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(destinations[index]["name"]),
              subtitle: Text(destinations[index]["description"]),
              trailing: IconButton(
                icon: Icon(
                  destinations[index]["isFavorite"]
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: destinations[index]["isFavorite"]
                      ? Colors.red
                      : Colors.grey,
                ),
                onPressed: () => toggleFavorite(index),
              ),
              onTap: () => navigateToDetailPage(context, destinations[index]),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> destination;

  DetailPage({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination['name']),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: destination['places'].length,
        itemBuilder: (context, index) {
          final place = destination['places'][index];
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  place['imageAsset'],
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    place['name'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(place['description']),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
