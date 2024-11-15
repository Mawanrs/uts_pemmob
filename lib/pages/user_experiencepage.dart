import 'package:flutter/material.dart';

class UserExperiencePage extends StatefulWidget {
  @override
  _UserExperiencePageState createState() => _UserExperiencePageState();
}

class _UserExperiencePageState extends State<UserExperiencePage> {
  List<String> reviews = []; // List to store reviews
  double rating = 1.0; // Default rating
  String selectedTourismArea = "Pilih Wisata"; // Default selection

  // List of tourism areas for the dropdown
  List<String> tourismAreas = [
    "Pilih Wisata",
    "Pura Gunung Kawi ",
    "Campuhan Ridge Walk",
    "Banyumala Twin Waterfall",
    "Candi Borobudur",
    "Candi Prambanan",
    "Malioboro"
  ];

  void showReviewDialog(BuildContext context) {
    TextEditingController reviewController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Beri Ulasan"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // TextField for review input
              TextField(
                controller: reviewController,
                decoration: InputDecoration(hintText: "Masukkan ulasan Anda"),
                maxLines: 3,
              ),
              SizedBox(height: 16),

              // Star rating selection
              Row(
                children: [
                  Text("Rating: ", style: TextStyle(fontSize: 16)),
                  for (int i = 1; i <= 5; i++) // Loop to create 5 star icons
                    IconButton(
                      icon: Icon(
                        Icons.star,
                        color: rating >= i ? Colors.orange : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          rating = i.toDouble(); // Set rating to the clicked star
                        });
                      },
                    ),
                ],
              ),

              SizedBox(height: 16),

              // Dropdown for selecting tourism area
              DropdownButton<String>(
                value: selectedTourismArea,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedTourismArea = newValue!;
                  });
                },
                items: tourismAreas.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Batal"),
            ),
            TextButton(
              onPressed: () {
                String review = reviewController.text.trim();
                if (review.isNotEmpty && selectedTourismArea != "Pilih Wisata") {
                  // Save the review data
                  setState(() {
                    reviews.add(
                        "$review\nRating: $rating stars\nWisata: $selectedTourismArea");
                  });
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Ulasan berhasil disimpan")),
                  );
                } else {
                  // Show error if input is invalid
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Pastikan semua data terisi")),
                  );
                }
              },
              child: Text("Simpan"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengalaman Pengguna yang Lebih Baik'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fitur yang Ramah Pengguna',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => showReviewDialog(context),
              child: Text('Beri Ulasan'),
            ),
            SizedBox(height: 16),

            // Display saved reviews
            if (reviews.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ulasan yang Disimpan:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  ...reviews.map((review) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text('• $review'),
                      )),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
