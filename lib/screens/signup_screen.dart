import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController mobileCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SizedBox(
          width: 350,   
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(labelText: "Full Name"),
              ),

              SizedBox(height: 14),

              TextField(
                controller: mobileCtrl,
                keyboardType: TextInputType.phone,   // proper keypad
                decoration: InputDecoration(labelText: "Mobile Number"),
              ),

              SizedBox(height: 14),

              TextField(
                controller: passCtrl,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),

              SizedBox(height: 25),

              ElevatedButton(
                child: Text("Create Account"),
                onPressed: () {
                  Navigator.pop(context);  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
