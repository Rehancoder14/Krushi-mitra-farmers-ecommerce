import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Notifications",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Container(
        height: 350,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: const [
          Icon(
            Icons.notifications,
            size: 280,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )
        ]),
      )),
    );
  }
}
