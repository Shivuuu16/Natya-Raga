import 'package:flutter/material.dart';

class MudrasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mudras", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hand Mudras (Hasta Mudras)",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            Text(
              "Mudras are symbolic hand gestures used to express meaning.\n\n"
              "Two types of Mudras:\n"
              "• Asamyuta Hasta (single hand)\n"
              "• Samyuta Hasta (two hands)\n\n"
              "Examples:\n"
              "• Pataka\n"
              "• Tripataka\n"
              "• Ardhapataka\n"
              "• Kartarimukha\n"
              "• Alapadma",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
