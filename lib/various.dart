import 'package:flutter/material.dart';
import 'package:krushimitra/storeview.dart';

class VariousType extends StatefulWidget {
  const VariousType({super.key});

  @override
  State<VariousType> createState() => _VariousTypeState();
}

class _VariousTypeState extends State<VariousType> {
  @override
  Widget build(BuildContext context) {
    var iconImage = {
      "seeds.jpeg": "Precaution",
      "seed2.jpeg": "Seeds",
      "seed3.jpeg": "Hardware",
      "seed4.jpeg": "Ferticides",
      "seed5.jpeg": "Combo Kit"
    };
    return SizedBox(
        width: double.maxFinite,
        height: 120,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StoreView()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/${iconImage.keys.elementAt(index)}"))),
                  ),
                ),
                const SizedBox(height: 10),
                // ignore: avoid_unnecessary_containers
                Container(
                  alignment: Alignment.center,
                  // ignore: unnecessary_string_interpolations
                  child: Text("${iconImage.values.elementAt(index)}"),
                )
              ],
            );
          },
          scrollDirection: Axis.horizontal,
        ));
  }
}
