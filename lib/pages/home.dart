import 'package:flutter/material.dart';
import 'package:insta_clone/utils/bubble_stories.dart';
import 'package:insta_clone/utils/usre_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List people = [
    'kirti',
    'nidhi',
    'sanyam',
    'anshika',
    'vishu',
    'abee',
    'pranav'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite, color: Colors.black),
                ),
                Icon(Icons.share, color: Colors.black)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          SizedBox(
              height: 130,
              child: ListView.builder(
                  //list view make it scrollable
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  })),

          //posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
