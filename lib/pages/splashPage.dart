import 'dart:async';

import 'package:flutter/material.dart';
import 'package:student_app/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  static const String id = 'splash_page_id';

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(milliseconds: 2500),
        () => Navigator.pushReplacementNamed(context, HomePage.id));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(top: 100),
                    child: const Image(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Nurafshan Presidential School',
                    style: TextStyle(color: Colors.blue[800], fontSize: 30),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.25,
              child: LinearProgressIndicator(
                color: Colors.lightBlueAccent,
                backgroundColor: Colors.blue[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}