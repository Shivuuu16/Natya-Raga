import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../screens/landing_page.dart';
import '../content/origin_page.dart';
import '../content/adavus_page.dart';
import '../content/mudras_page.dart';
import '../content/gurus_page.dart';
import '../content/academies_page.dart';
import '../content/stories_page.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  Future<void> _logout(BuildContext context) async {
    await Supabase.instance.client.auth.signOut();

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LandingPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Student Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // ☰ white
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
            onPressed: () => _logout(context),
          ),
        ],
      ),

      // ✅ Drawer
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'Contents',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            _drawerItem(context, "Origin", const OriginPage()),
            _drawerItem(context, "Adavus", AdavusPage()),
            _drawerItem(context, "Mudras", MudrasPage()),
            _drawerItem(context, "Gurus", GurusPage()),
            _drawerItem(context, "Academies", AcademiesPage()),
            _drawerItem(context, "Stories", StoriesPage()),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Welcome to Natya Raga 🎶\nStudent Learning Dashboard",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // Drawer item helper
  ListTile _drawerItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}
