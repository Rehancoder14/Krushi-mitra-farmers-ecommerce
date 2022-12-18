import 'package:flutter/material.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var iconImage = {
      "delivery.png": "Free Delivery",
      "verify.png": "200+ Brands",
      "original.png": "100% Original",
    };
    return SizedBox(
        width: double.maxFinite,
        height: 120,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                          "assets/${iconImage.keys.elementAt(index)}",
                        ))),
                  ),
                  const SizedBox(height: 10),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    alignment: Alignment.center,
                    child: Text(
                      // ignore: unnecessary_string_interpolations
                      "${iconImage.values.elementAt(index)}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            );
          },
          scrollDirection: Axis.horizontal,
        ));
  }
}
