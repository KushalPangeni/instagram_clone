import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String name;
  const BubbleStories({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(name),
        ],
      ),
    );
  }
}
