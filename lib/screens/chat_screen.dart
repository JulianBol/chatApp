import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Chat GPT'),
        leading: const Row(
          children: [
            SizedBox(width: 16),
            CircleAvatar(backgroundImage: NetworkImage('https://cdn-1.webcatalog.io/catalog/chatgpt/chatgpt-icon-filled-256.png?v=1699261240952')),
            ],
          ),
        ),
      
    );
  }
}
