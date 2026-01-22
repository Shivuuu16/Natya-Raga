import 'package:flutter/material.dart';

class StoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stories", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Stories Through Bharatanatyam",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Bharatanatyam expresses mythological and devotional stories:\n\n"
              "• Tales of Lord Shiva\n"
              "• Stories of Krishna\n"
              "• Episodes from Ramayana\n"
              "• Scenes from Mahabharata\n\n"
              "Dance communicates emotions (rasa) and expression (bhava).",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
