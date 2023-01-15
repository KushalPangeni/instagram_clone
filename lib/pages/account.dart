import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/explore_grid.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.green,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: const [
                Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                  size: 18,
                ),
                Text(
                  "kushal_pangeni123",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 25,
                ),
              ],
            ),
            actions: const [
              Icon(
                Icons.shop,
                color: Colors.black,
                size: 27,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: Icon(
                  Icons.menu,
                  size: 28,
                  color: Colors.black,
                ),
              )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Row for profile Photo and posts followers following
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    //Posts Followers Following
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Posts
                          Column(
                            children: const [
                              Text(
                                '25',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text("Posts")
                            ],
                          ),
                          //Followers
                          Column(
                            children: const [
                              Text(
                                '546',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text("Followers")
                            ],
                          ),
                          //Following
                          Column(
                            children: const [
                              Text(
                                '102',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text("Following")
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //Name and bio
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Kushal Pangeni',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('I create apps and games.'),
                    Text(
                      "youtube.com/kushal_pangeni123",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              //Edit Profile and add Buttons
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        // height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "Edit profile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person_add,
                              size: 18,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              //Bubble stories
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BubbleStories(name: 'Story 1'),
                    BubbleStories(name: 'Story 2'),
                    BubbleStories(name: 'Story 3'),
                    BubbleStories(name: 'Story 4'),
                    BubbleStories(name: 'Story 5')
                  ],
                ),
              ),
              // 4 Tabs
              const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_3x3,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.shop, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.person, color: Colors.black),
                  ),
                ],
              ),
              //pages for 4 tabs
              const Expanded(
                child: TabBarView(children: [
                  ExploreGrid(),
                  ExploreGrid(),
                  ExploreGrid(),
                  ExploreGrid()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
