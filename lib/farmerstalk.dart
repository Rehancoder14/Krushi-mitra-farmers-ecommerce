import 'package:flutter/material.dart';

class Farmertalk extends StatelessWidget {
  const Farmertalk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Cart")),
      body: Center(
        child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: const Icon(
              Icons.message,
              size: 200,
            )),
      ),
    );
  }
}
