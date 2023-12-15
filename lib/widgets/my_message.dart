import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    
    // Obtiene las dimensiones de la pantalla del dispositivo.
    final Size size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      
      children: [
        
        Container(
          margin: const EdgeInsets.only(bottom: 4),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          constraints: BoxConstraints(maxWidth: size.width * 0.7),
          decoration: BoxDecoration(color: colors.secondary, borderRadius: BorderRadius.circular(15)),
          child: const Text('Este texto es de prueba, la app se encuentra en desarrollo.', style: TextStyle(color: Colors.white)),
        ),

      ],
    );
  }
}