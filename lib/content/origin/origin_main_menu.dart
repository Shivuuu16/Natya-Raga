import 'package:flutter/material.dart';

import 'origin_intro_page.dart';
import 'origin_etymology_page.dart';
import 'origin_history_page.dart';
import 'origin_devadasi_page.dart';
import 'origin_decline_page.dart';
import 'origin_revival_page.dart';
import 'origin_elements_page.dart';
import 'origin_arangetram_page.dart';

class OriginMainMenu extends StatelessWidget {
  const OriginMainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Origin of Bharatanatyam",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          menuItem(context, "1. Introduction", const OriginIntroPage()),
          menuItem(context, "2. Meaning / Etymology", const OriginEtymologyPage()),
          menuItem(context, "3. Ancient History", const OriginHistoryPage()),
          menuItem(context, "4. Devadasi Tradition", const OriginDevadasiPage()),
          menuItem(context, "5. Colonial Decline", const OriginDeclinePage()),
          menuItem(context, "6.enaissance", const OriginRevivalPage()),
          menuItem(context, "7. Elements of Bharatanatyam", const OriginElementsPage()),
          menuItem(context, "8. Arangetram Ceremony", const OriginArangetramPage()),
        ],
      ),
    );
  }

  Widget menuItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontSize: 18)),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}
