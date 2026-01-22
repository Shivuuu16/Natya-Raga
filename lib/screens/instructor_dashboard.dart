import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../screens/landing_page.dart';
import '../content/origin_page.dart';
import '../content/adavus_page.dart';
import '../content/mudras_page.dart';
import '../content/gurus_page.dart';
import '../content/academies_page.dart';
import '../content/stories_page.dart';

class InstructorDashboard extends StatelessWidget {
  const InstructorDashboard({super.key});

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
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text("Instructor Dashboard"),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          )
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Contents",
                  style: TextStyle(color: Colors.white, fontSize: 22)),
            ),
            _item(context, "Origin", const OriginPage()),
            _item(context, "Adavus", AdavusPage()),
            _item(context, "Mudras", MudrasPage()),
            _item(context, "Gurus", GurusPage()),
            _item(context, "Academies", AcademiesPage()),
            _item(context, "Stories", StoriesPage()),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Welcome Guru 🙏\nInstructor Dashboard",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  ListTile _item(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(
  title,
  style: const TextStyle(color: Colors.white),
),

      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
    );
  }
}
