import 'package:flutter/material.dart';
import "package:user_info_app/user_info_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Info Page',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: "Roboto",
      ),
      home: UserInfoPage(),
    );
  }
}
