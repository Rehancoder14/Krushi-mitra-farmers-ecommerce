import 'package:flutter/material.dart';

class ProdView extends StatelessWidget {
  const ProdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
