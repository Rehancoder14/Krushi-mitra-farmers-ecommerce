import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:krushimitra/loginpage.dart';

class FireLogin extends StatefulWidget {
  const FireLogin({super.key});

  @override
  State<FireLogin> createState() => _FireLoginState();
}

class _FireLoginState extends State<FireLogin> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseapp = await Firebase.initializeApp();
    return firebaseapp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const LoginPage();
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
