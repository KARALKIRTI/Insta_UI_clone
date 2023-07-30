import 'package:flutter/material.dart';
import 'package:insta_clone/utils/exploregrid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child:Container(
          color: Colors.grey,
          padding: const EdgeInsets.all(8),
          child: const Row(children: [
            Icon(Icons.search,),
            Text('Search',
            style: TextStyle(color: Colors.grey),),
          ]),
        ),
      ),
    ),
    body: const ExploreGrid(),);
  }
}
