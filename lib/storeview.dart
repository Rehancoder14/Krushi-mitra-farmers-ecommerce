import 'package:flutter/material.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Store",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Container(
        margin: const EdgeInsets.all(0),
        child: GridView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ));
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
        ),
      ),
    );
  }
}
