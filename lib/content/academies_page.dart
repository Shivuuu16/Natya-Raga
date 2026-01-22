import 'package:flutter/material.dart';

class AcademiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Academies", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Popular Bharatanatyam Academies",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "• Kalakshetra Foundation – Chennai\n"
              "• Natya Institute – Bangalore\n"
              "• Nrityagram – Bangalore\n"
              "• Rajarajeswari Bharatanatya Kala Mandir – Mumbai\n"
              "• Shivanjali School of Dance\n\n"
              "These institutions preserved the art through systematic training.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
