import 'package:flutter/material.dart';

class InputMessage extends StatelessWidget {
  const InputMessage({super.key});

  @override
  Widget build(BuildContext context) {

    // 'textController' almacena un controlador de texto que asociamos a nuestreo 
    // TextFormField para tener acceso al string existente en el TextFormField.
    final textController = TextEditingController();

    // 'focusNode' almacena un controlador de estado (enfoque) que asociamos a nuestreo 
    // TextFormField para tener control sobre los estados del TextFormField y saber si 
    // está habilitado o no (focus - unfocus).
    final focusNode = FocusNode();

    // 'outlineInputBorder' almacena una instancia del estilo de borde para la caja de 
    // texto (input) de TextFormField, esta varible se asigna en 'enabledBorder' y 
    // 'focusedBorder' dentro de la clase InputDecoration.
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));
    
    // Obtiene el contexto de los colores del tema principal de la app.
    final colors = Theme.of(context).colorScheme;

    // 'inputDecoration' almacena el estilo general del input generado con TextFormField.
    final inputDecoration = InputDecoration(
        hintText: "¿Qué nececitas?",
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        suffixIcon: IconButton(
          color: colors.primary,

            icon: const Icon(Icons.send_outlined), 
            onPressed: () {
              textController.clear();
              focusNode.requestFocus();
            }),
    );

    return Container(
        margin: const EdgeInsets.only(bottom: 5),
        child: TextFormField(
            decoration: inputDecoration,
            controller: textController,
            focusNode: focusNode,
            onTapOutside: (event) => focusNode.unfocus(),

            // Acción que realiza el input de texto al escribir sobre él (escucha los cambios en tiempo real).
            onChanged: (value) {
              print(value);
            },

            // Acción que realiza el input de texto al enviar texto.
            onFieldSubmitted: (value) {

              // Después de llamar a esta función, el texto en TextFormField será la cadena vacía.
              textController.clear();

              // Solicita el foco principal, es decir, lo vuelve a enfocar (habilitar).
              focusNode.requestFocus();
              print(value);
            }));
  }
}
