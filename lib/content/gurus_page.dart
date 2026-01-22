import 'package:flutter/material.dart';

class GurusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Famous Gurus", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Famous Bharatanatyam Gurus",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Here are some legendary gurus:\n\n"
              "• Rukmini Devi Arundale\n"
              "• Balasaraswati\n"
              "• Padma Subrahmanyam\n"
              "• Adyar Lakshman\n"
              "• Meenakshi Sundaram Pillai\n"
              "• Kittappa Pillai\n\n"
              "These gurus redefined and preserved the classical style.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
