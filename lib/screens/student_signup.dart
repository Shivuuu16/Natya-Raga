import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'student_login.dart';

class StudentSignupPage extends StatefulWidget {
  const StudentSignupPage({super.key});

  @override
  State<StudentSignupPage> createState() => _StudentSignupPageState();
}

class _StudentSignupPageState extends State<StudentSignupPage> {
  final fullNameController = TextEditingController();
  final ageController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  Future<void> signup() async {
    final fullName = fullNameController.text.trim();
    final ageText = ageController.text.trim();
    final mobile = mobileController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    // 🔴 Basic validation
    if (fullName.isEmpty ||
        ageText.isEmpty ||
        mobile.isEmpty ||
        email.isEmpty ||
        password.isEmpty) {
      _showMessage("All fields are required");
      return;
    }

    if (!_isValidEmail(email)) {
      _showMessage("Enter a valid email address");
      return;
    }

    if (int.tryParse(ageText) == null) {
      _showMessage("Age must be a number");
      return;
    }

    if (mobile.length < 10) {
      _showMessage("Enter a valid mobile number");
      return;
    }

    setState(() => isLoading = true);

    try {
      final authRes = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );

      final user = authRes.user;
      if (user == null) {
        _showMessage("Signup failed");
        return;
      }

      // Insert profile data
      await Supabase.instance.client.from('profiles').insert({
        'id': user.id,
        'full_name': fullName,
        'age': int.parse(ageText),
        'mobile': mobile,
        'role': 'student',
      });

      _showMessage("Account created! Please verify your email.");

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const StudentLoginPage()),
        );
      }
    } on AuthException catch (e) {
      _showMessage(e.message);
    } catch (_) {
      _showMessage("Something went wrong. Try again.");
    } finally {
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: SizedBox(
              width: 340, // Same style as login
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Student Signup",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Create your Natya Raga account",
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(height: 26),

                    _inputField(
                      controller: fullNameController,
                      label: "Full Name",
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(height: 14),

                    _inputField(
                      controller: ageController,
                      label: "Age",
                      icon: Icons.cake_outlined,
                      keyboard: TextInputType.number,
                    ),
                    const SizedBox(height: 14),

                    _inputField(
                      controller: mobileController,
                      label: "Mobile Number",
                      icon: Icons.phone_outlined,
                      keyboard: TextInputType.phone,
                    ),
                    const SizedBox(height: 14),

                    _inputField(
                      controller: emailController,
                      label: "Email",
                      icon: Icons.email_outlined,
                      keyboard: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 14),

                    _inputField(
                      controller: passwordController,
                      label: "Password",
                      icon: Icons.lock_outline,
                      obscure: true,
                    ),
                    const SizedBox(height: 24),

                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: isLoading ? null : signup,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: isLoading
                            ? const SizedBox(
                                height: 22,
                                width: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text("Create Account"),
                      ),
                    ),
                    const SizedBox(height: 14),

                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Already have an account? Login",
                        style: TextStyle(color: Colors.black),
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

  Widget _inputField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboard = TextInputType.text,
    bool obscure = false,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboard,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
