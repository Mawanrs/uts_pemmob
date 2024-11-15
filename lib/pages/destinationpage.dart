import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DestinationPage extends StatefulWidget {
  @override
  _DestinationPageState createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  String selectedDestination = 'Bali';

  final Map<String, List<Map<String, String>>> attractions = {
    'Bali': [
      {
        "name": "Pura Gunung Kawi",
        "description": "Situs arkeologi unik dengan relief kuno diukir di tebing batu.",
        "operationalHours": "08:00 - 17:00 WIB",
        "ticketPrice": "Rp 30.000 / orang",
        "mapUrl": "https://www.google.com/maps?q=-8.415976,115.290568",
      },
      {
        "name": "Campuhan Ridge Walk",
        "description": "Jalur pendakian dengan pemandangan lembah di Ubud.",
        "operationalHours": "24 Jam",
        "ticketPrice": "Gratis",
        "mapUrl": "https://www.google.com/maps?q=-8.507843,115.258285",
      },
      {
        "name": "Banyumala Twin Waterfall",
        "description": "Air terjun kembar yang indah dan terjaga kelestariannya.",
        "operationalHours": "08:00 - 18:00 WIB",
        "ticketPrice": "Rp 20.000 / orang",
        "mapUrl": "https://www.google.com/maps?q=-8.239334,115.105553",
      },
    ],
    'Yogyakarta': [
      {
        "name": "Candi Borobudur",
        "description": "Candi Buddha terbesar di dunia.",
        "operationalHours": "06:00 - 17:00 WIB",
        "ticketPrice": "Rp 50.000 / orang",
        "mapUrl": "https://www.google.com/maps?q=-7.607874,110.203751",
      },
      {
        "name": "Malioboro",
        "description": "Pusat belanja dan kuliner khas Jogja.",
        "operationalHours": "24 Jam",
        "ticketPrice": "Gratis",
        "mapUrl": "https://www.google.com/maps?q=-7.792735,110.365959",
      },
      {
        "name": "Candi Prambanan",
        "description": "Candi Hindu terbesar di Indonesia, terkenal dengan arsitektur yang megah.",
        "operationalHours": "06:00 - 17:00 WIB",
        "ticketPrice": "Rp 50.000 / orang",
        "mapUrl": "https://www.google.com/maps?q=-7.751600,110.491400",
      }
    ],
  };

  // URLs for booking tickets for each destination
  final Map<String, String> bookingUrls = {
    'Bali': "https://www.bali-booking.com",  // Example URL for Bali
    'Yogyakarta': "https://www.yogyakarta-booking.com",  // Example URL for Yogyakarta
  };

  void openMap(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void bookNow() async {
    final String bookingUrl = bookingUrls[selectedDestination]!;
    final Uri url = Uri.parse(bookingUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to show a SnackBar when an attraction is selected
  void showAttractionSelected(String attractionName) {
    // Show a SnackBar when an attraction is selected
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda memilih $attractionName'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aksesibilitas Informasi Wisata'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Informasi Wisata yang Akurat dan Terstruktur',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Dropdown untuk memilih destinasi
            DropdownButton<String>(
              value: selectedDestination,
              onChanged: (String? newValue) {
                setState(() {
                  selectedDestination = newValue!;
                });
              },
              items: ['Bali', 'Yogyakarta']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            // Daftar wisata berdasarkan destinasi
            Text(
              'Wisata di ${selectedDestination}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: attractions[selectedDestination]!.length,
              itemBuilder: (context, index) {
                final attraction = attractions[selectedDestination]![index];
                return Card(
                  child: ListTile(
                    title: Text(attraction['name']!),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(attraction['description']!),
                        SizedBox(height: 8),
                        Text("Jam Operasional: ${attraction['operationalHours']}"),
                        Text("Harga Tiket: ${attraction['ticketPrice']}"),
                        TextButton(
                          onPressed: () => openMap(attraction['mapUrl']!),
                          child: Text('Lihat di Peta'),
                        ),
                      ],
                    ),
                    onTap: () {
                      showAttractionSelected(attraction['name']!); // Show notification on tap
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            // Tombol Pesan Sekarang untuk pemesanan
            ElevatedButton.icon(
              onPressed: bookNow,
              icon: Icon(Icons.shopping_cart),
              label: Text('Pesan Sekarang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
