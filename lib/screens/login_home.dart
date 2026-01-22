import 'package:flutter/material.dart';
import 'student_login.dart';
import 'instructor_login.dart';

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Login", style: TextStyle(color: Colors.white)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Select Login Type", style: TextStyle(fontSize: 22)),

            const SizedBox(height: 40),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => StudentLogin()));
              },
              icon: Icon(Icons.school),
              label: Text("Student Login"),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => InstructorLogin()));
              },
              icon: Icon(Icons.person),
              label: Text("Instructor Login"),
            ),
          ],
        ),
      ),
    );
  }
}
