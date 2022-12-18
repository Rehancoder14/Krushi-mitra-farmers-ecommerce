import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import 'package:krushimitra/bottombar.dart';
import 'package:krushimitra/cardview.dart';
import 'package:krushimitra/drawer.dart';

import 'package:krushimitra/footer.dart';

import 'package:krushimitra/myhome.dart';
import 'package:krushimitra/notification.dart';

import 'package:krushimitra/prodview.dart';

import 'package:krushimitra/secondcart.dart';
import 'package:krushimitra/storeview.dart';

import 'package:krushimitra/various.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Krushi Mitra",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_bag,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StoreView()));
            },
          ), //IconButton
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Notify()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const MyWidget(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                SizedBox(width: 25),
                Text(
                  "Swipe ",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black45,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                SizedBox(width: 15),
                Text(
                  "Various Types",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const VariousType(),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(width: 15),
                Text(
                  "Buy Special Items for farms",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 208, 158, 158),
                      image: const DecorationImage(
                          image: AssetImage("assets/cotton.png"))),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SecondDart(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                SizedBox(width: 25),
                Text(
                  "Swipe ",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black45,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                SizedBox(width: 15),
                Text(
                  "Buy Special Items for farms",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const ProdView(),
            const SizedBox(
              height: 30,
            ),
            const ReferView(),
            const SizedBox(
              height: 30,
            ),
            const PageFooter()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          openwhatsapp();
        },
        child: const Icon(Icons.whatsapp),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const Bottombar(),
    );
  }

  openwhatsapp() async {
    var whatsappnum = "+917397941495  ";
    var whatsappURlAndroid = "whatsapp://send?phone=$whatsappnum&text=hello";
    var whatappURLIos = "https://wa.me/$whatsappnum?text=${Uri.parse("hello")}";
    if (Platform.isIOS) {
      // for iOS phone only
      // ignore: deprecated_member_use
      if (await canLaunch(whatappURLIos)) {
        // ignore: deprecated_member_use
        await launch(whatappURLIos, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("whatsapp not installed")));
      }
    } else {
      // ignore: deprecated_member_use
      if (await canLaunch(whatsappURlAndroid)) {
        // ignore: deprecated_member_use
        await launch(whatsappURlAndroid);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("whatsapp not installed")));
      }
    }
  }
}
