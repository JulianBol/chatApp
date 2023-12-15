import 'package:chat_app_v1/widgets/input_message.dart';
import 'package:chat_app_v1/widgets/messageIA.dart';
import 'package:chat_app_v1/widgets/my_message.dart';
import 'package:flutter/material.dart';

// Vista principal de la app.
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imageChatGPT =
        'https://cdn-1.webcatalog.io/catalog/chatgpt/chatgpt-icon-filled-256.png?v=1699261240952';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat GPT'),
        leading: const Row(
          children: [
            SizedBox(width: 16),
            CircleAvatar(backgroundImage: NetworkImage(imageChatGPT)),
          ],
        ),
      ),

      // ' _ChatView() ' contiene toda la interfaz de la pantalla del chat.
      body: const _ChatView(),
    );
  }
}



// '_chatView' contien toda la estrucutura del cuerpo de la app. En este widget
// se define la organización en pantalla de los mensajes y la entrada de texto (input).
class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
      
        child: Column(

          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? const MyMessage()
                    : const MessageIA();
                },
              ),
            ),
           
            InputMessage()
          ],
        ),
      ),
    );
  }
}
