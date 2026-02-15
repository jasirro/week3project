import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_home/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: NetworkImage(
                "https://i.pinimg.com/236x/3f/3f/ac/3f3face97035004591eb2659fe9c7b53.jpg",
              ),
            ),
          ),
          Text('i bugging you, pass me '),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
              );
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
