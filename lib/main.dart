import 'package:flutter/material.dart';
import 'package:chat_app_v1/config/theme/app_theme.dart';
import 'package:chat_app_v1/screens/chat_screen.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      home: const ChatScreen(),

      // Theme App
      theme: AppTheme(selectedColor: 5).applyTheme(),
      );
  }
}
