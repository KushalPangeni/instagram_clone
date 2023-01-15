import 'package:flutter/material.dart';
import 'package:instagram/util/explore_shop.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Shop",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.shop,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 18),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     const Text(
        //       "Shop",
        //       style:
        //           TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        //     ),
        //     Row(
        //       children: const [
        //         Icon(
        //           Icons.shop,
        //           color: Colors.black,
        //         ),
        //         SizedBox(
        //           width: 15,
        //         ),
        //         Icon(
        //           Icons.more_horiz,
        //           color: Colors.black,
        //         )
        //       ],
        //     )
        //   ],
        // ),
      ),
      body: Column(
        children: [
          //SearchBar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
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
          //GridView
          const Expanded(
            child: ExploreShop(),
          )
        ],
      ),
    );
  }
}
