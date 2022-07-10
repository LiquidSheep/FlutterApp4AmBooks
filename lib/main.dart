import 'package:flutter/material.dart';
import 'package:rakuten_books_api/page/home_page.dart';

void main() {
  runApp(const DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const HomePage(),
    );
  }
}
