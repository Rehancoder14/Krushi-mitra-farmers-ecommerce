import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us")),
      body: Center(
        child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: const Icon(
              Icons.people,
              size: 200,
            )),
      ),
    );
  }
}
