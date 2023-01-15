// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //title circleAvatar, name, moreIcon
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0, left: 16, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[500], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        //Post container
        Container(
          height: 300,
          color: Colors.grey[500],
        ),
        //Icons love comment send bookmark
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border_outlined),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.comment_outlined),
                  ),
                  Icon(Icons.send),
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),
        //Liked By Row
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'kushal ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //Comment Highlight
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' You are looking very beautiful.')
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
