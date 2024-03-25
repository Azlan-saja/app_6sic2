import 'package:app_6sic2/login.dart';
import 'package:app_6sic2/widget/my_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi 6SIB2',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // primarySwatch: materialColorUtama,
        primarySwatch: const MaterialColor(
          warnaThema,
          <int, Color>{
            50: Color(warnaThema),
            100: Color(warnaThema),
            200: Color(warnaThema),
            300: Color(warnaThema),
            400: Color(warnaThema),
            500: Color(warnaThema),
            600: Color(warnaThema),
            700: Color(warnaThema),
            800: Color(warnaThema),
            900: Color(warnaThema),
          },
        ),
      ),
      home: const MyLogin(),
    );
  }
}
