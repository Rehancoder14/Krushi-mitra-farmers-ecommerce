import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:krushimitra/fb1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Splashscreenlogo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splashscreenlogo extends StatefulWidget {
  const Splashscreenlogo({super.key});

  @override
  State<Splashscreenlogo> createState() => _SplashscreenlogoState();
}

class _SplashscreenlogoState extends State<Splashscreenlogo> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const FireLogin())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/logo.jpg"),
    );
  }
}
