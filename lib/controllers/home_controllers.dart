import 'package:flutter/material.dart';
import 'package:uts_pemmob/pages/destinationpage.dart';
import 'package:uts_pemmob/pages/informationpage.dart';
import 'package:uts_pemmob/pages/user_experiencepage.dart';

class HomeController {
  // Fungsi untuk menangani navigasi ke halaman yang dituju
  static void navigateToPage(BuildContext context, String pageName) {
    Widget page;
    switch (pageName) {
      case 'DestinationPage':
        page = DestinationPage();
        break;
      case 'InformationPage':
        page = InformationPage();
        break;
      case 'UserExperiencePage':
        page = UserExperiencePage();
        break;
      default:
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
