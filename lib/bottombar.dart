import 'package:flutter/material.dart';
import 'package:krushimitra/farmerstalk.dart';
import 'package:krushimitra/homepage.dart';
import 'package:krushimitra/personinfo.dart';
import 'package:krushimitra/searchpage.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
            label: "Home",
            icon: IconButton(
                icon: const Icon(Icons.apps),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                })),
        BottomNavigationBarItem(
            label: "Farmers Talk",
            icon: IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Farmertalk()));
                    });
              },
            )),
        BottomNavigationBarItem(
            label: "Search",
            icon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                })),
        BottomNavigationBarItem(
            label: "My",
            icon: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserInfolog()));
              },
            ))
      ],
    );
  }
}
