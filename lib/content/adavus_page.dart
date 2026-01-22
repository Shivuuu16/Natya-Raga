import 'package:flutter/material.dart';

class AdavusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adavus", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Adavus — Basic Steps",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 12),

            Text(
              "Adavus are the basic dance units combining:\n"
              "• Body positions\n"
              "• Foot movements\n"
              "• Hand gestures\n"
              "• Rhythm\n\n"
              "Examples:\n"
              "• Tatta Adavu\n"
              "• Natta Adavu\n"
              "• Visharu Adavu\n"
              "• Kuditta Mettu Adavu",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
