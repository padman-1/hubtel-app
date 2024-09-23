import 'package:flutter/material.dart';
import 'package:hubtel/home_page.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ShadApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
