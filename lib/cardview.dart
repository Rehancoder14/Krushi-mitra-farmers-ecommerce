import 'package:flutter/material.dart';

class ReferView extends StatelessWidget {
  const ReferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 200,
      child: Card(
        shadowColor: Colors.grey,
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
              image:
                  const DecorationImage(image: AssetImage("assets/refer.png")),
              color: Colors.white),
        ),
      ),
    );
  }
}
