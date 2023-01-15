import 'package:flutter/material.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List people = [
    'Kushal',
    'Pangeni',
    'Kusu',
    'Pangu',
    'Pangu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //title and icons
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
            //Appbar icons
            Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      //all body
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) =>
                  BubbleStories(name: people[index]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: ((context, index) => UserPost(
                    name: people[index],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
