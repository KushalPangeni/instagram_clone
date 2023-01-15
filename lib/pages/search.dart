import 'package:flutter/material.dart';
import 'package:instagram/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Colors.grey.shade400,
              // decoration: BoxDecoration(
              //
              //   borderRadius: BorderRadius.circular(12),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Search")
                ]),
              ),
            ),
          ),
        ),
        body: const ExploreGrid());
  }
}
