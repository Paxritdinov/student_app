
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_app/pages/home_page.dart';
import 'package:student_app/pages/splashPage.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('My App');
    setWindowMinSize(const Size(640, 640));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        HomePage.id: (context)=> HomePage(),
        SplashPage.id: (context)=> SplashPage()
      },
    );
  }
}
