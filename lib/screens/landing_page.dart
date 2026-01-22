import 'package:flutter/material.dart';

import '../content/origin_page.dart';
import '../content/adavus_page.dart';
import '../content/mudras_page.dart';
import '../content/gurus_page.dart';
import '../content/academies_page.dart';
import '../content/stories_page.dart';

import 'student_login.dart';
import 'instructor_login.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Natya Raga"),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              child: Text(
                'Contents',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            _drawerItem(context, Icons.history, "Origin", const OriginPage()), // OK (this is const)
            _drawerItem(context, Icons.directions_run, "Adavus", AdavusPage()),
            _drawerItem(context, Icons.pan_tool, "Mudras", MudrasPage()),
            _drawerItem(context, Icons.people, "Gurus", GurusPage()),
            _drawerItem(context, Icons.school, "Academies", AcademiesPage()),
            _drawerItem(context, Icons.menu_book, "Stories", StoriesPage()),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Natya Raga",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "A Bharatanatyam Digital Learning Platform",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _loginButton(
                  context,
                  icon: Icons.person,
                  label: "Student Login",
                  page: const StudentLoginPage(),
                ),
                const SizedBox(width: 40),
                _loginButton(
                  context,
                  icon: Icons.school,
                  label: "Instructor Login",
                  page: const InstructorLoginPage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Widget page,
  }) {
    return Column(
      children: [
        IconButton(
          iconSize: 50,
          icon: Icon(icon),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => page),
            );
          },
        ),
        Text(label),
      ],
    );
  }

  ListTile _drawerItem(
    BuildContext context,
    IconData icon,
    String title,
    Widget page,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // close drawer
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}
