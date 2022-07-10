import 'package:flutter/material.dart';
import 'package:rakuten_books_api/form/input_form.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFDFDEC),
      body: InputForm(),
    );
  }
}
