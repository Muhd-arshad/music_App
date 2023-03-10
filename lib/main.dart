import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/screen/home/home_screen.dart';
import 'package:musicplayer_flutter/screen/widget/splash_screen.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        
      ),
      home://const ScreenSPlash(),
     const ScreenHome()
    );
  }
}