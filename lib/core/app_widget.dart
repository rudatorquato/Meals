import 'package:flutter/material.dart';
import 'package:meals/home/widgets/home_page_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Categories(),
    );
  }
}
