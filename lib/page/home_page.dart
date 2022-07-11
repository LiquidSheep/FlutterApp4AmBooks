import 'package:flutter/material.dart';
import 'package:rakuten_books_api/page/input_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDEC),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 1000),
              pageBuilder: (context, animation, secondaryAnimation) =>
                  FadeTransition(
                opacity: animation,
                child: const InputPage(),
              ),
            ),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 1000,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xFF852342),
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'A',
                        style: TextStyle(
                          color: Color(0xFFFF5F5F),
                        ),
                      ),
                      TextSpan(
                        text: 'm',
                        style: TextStyle(
                          color: Color(0xFF3DAE97),
                        ),
                      ),
                      TextSpan(text: 'Books'),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 500,
                    child: Text(
                      'AMAOO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFF5F5F),
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Text(
                      'mint',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3DAE97),
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
