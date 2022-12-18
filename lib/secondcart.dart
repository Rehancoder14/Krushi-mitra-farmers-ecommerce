import 'package:flutter/material.dart';

class SecondDart extends StatefulWidget {
  const SecondDart({super.key});

  @override
  State<SecondDart> createState() => _SecondDartState();
}

class _SecondDartState extends State<SecondDart> {
  @override
  Widget build(BuildContext context) {
    List images = ["arex.jpeg", "bhumika.jpeg", "seljik.jpeg", "nutri.jpeg"];
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 250,
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.grey,
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/${images[index]}",
                        ),
                        fit: BoxFit.cover),
                    color: Colors.white),
              ),
            );
          }),
    );
  }
}
