import 'package:flutter/material.dart';

class MessageIA extends StatelessWidget {
  const MessageIA({super.key});

  @override
  Widget build(BuildContext context) {

    // Obtiene las dimensiones de la pantalla del dispositivo.
    final Size size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          margin: const EdgeInsets.only(top: 3),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          constraints: BoxConstraints(maxWidth: size.width * 0.7),
          decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(15)),
          child: const Text('Este texto es de prueba, el mensaje deberá ser la respuesra de la IA, la app se encuentra en desarrollo.', style: TextStyle(color: Colors.white)),
        ),
        
      ],
    );
  }
}