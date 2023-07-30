import 'package:flutter/material.dart';
import 'package:insta_clone/insta_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
      //if you want a single color for entire app 
      //theme: ThemeData(primarySwatch: Colors.grey)
      );
    
  }
}
