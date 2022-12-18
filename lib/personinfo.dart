import 'package:flutter/material.dart';

class UserInfolog extends StatefulWidget {
  const UserInfolog({super.key});

  @override
  State<UserInfolog> createState() => _UserInfologState();
}

class _UserInfologState extends State<UserInfolog> {
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
        child: Column(children: [
          Image.network(
              "https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-2/256/personal-information-icon.png"),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )
        ]),
      )),
    );
  }
}
