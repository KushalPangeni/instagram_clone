import 'package:flutter/material.dart';

class ExploreShop extends StatelessWidget {
  const ExploreShop({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.grey,
            ),
          )),
    );
  }
}
