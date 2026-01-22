import 'package:flutter/material.dart';
import 'student_login.dart';
import 'instructor_login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Natya Raga"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StudentLoginPage()),
                );
              },
              child: Text("Student Login"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => InstructorLoginPage()),
                );
              },
              child: Text("Instructor Login"),
            ),
          ],
        ),
      ),
    );
  }
}
