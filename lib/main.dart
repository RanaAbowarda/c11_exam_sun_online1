import 'package:c11_exam_sun_online/audi_books/audi_screen.dart';
import 'package:c11_exam_sun_online/moody/moody_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
      home:
      // AudiBooks(),
       MoodyScreen(),

    );
  }
}
