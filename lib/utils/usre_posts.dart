
import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //profile photo
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon( 
                Icons.menu,
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey,
        ),
        //below the post -> button and comments
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.send),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //liked by.....
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'abee',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                    text: name,
                    
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(
                  text:
                      ' i turn the dirt they thowing into riches till in filthy',

                )
              ]), 
              ),
        )
        //comments
      ],
    );
  }
}
