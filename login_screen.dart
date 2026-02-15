import 'package:flutter/material.dart';
import 'package:my_home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailctrl = TextEditingController();
  final passctrl = TextEditingController();
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailctrl,
                decoration: InputDecoration(labelText: "username"),
              ),
              TextField(
                controller: passctrl,
                decoration: InputDecoration(labelText: "password"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (emailctrl.text == "jasir@gmail.com" &&
                      passctrl.text == "123456") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("invalid")));
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
