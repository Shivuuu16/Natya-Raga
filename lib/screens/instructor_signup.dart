import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'instructor_login.dart';

class InstructorSignupPage extends StatefulWidget {
  const InstructorSignupPage({super.key});

  @override
  State<InstructorSignupPage> createState() => _InstructorSignupPageState();
}

class _InstructorSignupPageState extends State<InstructorSignupPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final experienceController = TextEditingController();
  final passwordController = TextEditingController();

  bool hasBA = false;
  bool hasMA = false;
  bool isLoading = false;

  Future<void> signup() async {
    setState(() => isLoading = true);

    try {
      final authRes = await Supabase.instance.client.auth.signUp(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      final user = authRes.user;
      if (user == null) throw const AuthException("Signup failed");

      await Supabase.instance.client.from('profiles').insert({
  'id': user.id, // FK to auth.users
  'full_name': nameController.text.trim(),
  'mobile': mobileController.text.trim(),
  'age': int.parse(ageController.text.trim()),
  'ba_bharatanatyam': hasBA,
  'ma_bharatanatyam': hasMA,
  'experience_years': int.parse(experienceController.text.trim()),
  'role': 'instructor',
});


      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Verification email sent. Please verify.")),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const InstructorLoginPage()),
      );
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 320,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const Text(
                      "Instructor Signup",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25),

                    _field(nameController, "Full Name"),
                    _field(mobileController, "Mobile Number"),
                    _field(emailController, "Email"),
                    _field(ageController, "Age", TextInputType.number),
                    _field(experienceController, "Years of Experience", TextInputType.number),

                    CheckboxListTile(
                      title: const Text("BA Bharatanatyam"),
                      value: hasBA,
                      onChanged: (v) => setState(() => hasBA = v!),
                    ),
                    CheckboxListTile(
                      title: const Text("MA Bharatanatyam"),
                      value: hasMA,
                      onChanged: (v) => setState(() => hasMA = v!),
                    ),

                    _field(passwordController, "Password", TextInputType.text, true),
                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: isLoading ? null : signup,
                        child: isLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : const Text("Create Account"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _field(
    TextEditingController c,
    String label, [
    TextInputType type = TextInputType.text,
    bool obscure = false,
  ]) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: c,
        obscureText: obscure,
        keyboardType: type,
        decoration: InputDecoration(labelText: label),
      ),
    );
  }
}
