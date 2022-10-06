import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab_2/Screen/Login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
          ),
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 32,
          ),
          label: Text(
            'Sign Out',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
