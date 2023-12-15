import 'package:flutter/material.dart';

// '_colorThemes' define una lista de colores aplicables al tema general de la app.
const List <Color> _colorThemes = [
  Colors.indigo,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];


class AppTheme {

  // 'selectedColor' será el valor del index de '_colorThemes' , en otras palabras es el 
  // selector del color que se aplicara al tema de la app-
  final int selectedColor;

  AppTheme({required this.selectedColor}): 
    
    // 'assert' funciona como exepción, en este caso indica que 'selectedColor' debe estar entre 0 y 6 
    // (tamaño de la lista _colorThemes), si esas condiciones no se cumplen evidentemente habrá un error 
    // por desbordamiento de la lista, y assert le indica al desarrollador el por qué de dicho error, 
    // sin embargo no evita que la ejecución se detenga.
    assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
    'Colors must be between 0 and ${_colorThemes.length}');


  // 'applyTheme' es un método que retorna una instancia (ThemeData) del tema general que se aplicará a la app.
  // esta instancia se coloca en 'main.dart' dentro del widget 'MaterialApp' de la siguiente forma:

  //                          theme: AppTheme(selectedColor: 0).applyTheme()
  ThemeData applyTheme() {

    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}
