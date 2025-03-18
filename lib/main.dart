import 'package:flutter/material.dart';
import 'package:whatsapp/core/theme/theme.dart';
import 'package:whatsapp/features/presentation/pages/home_screen.dart';
 
void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mytheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen() ,
    );
  }
}
