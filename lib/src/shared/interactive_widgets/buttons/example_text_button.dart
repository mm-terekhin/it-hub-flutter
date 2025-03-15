import 'package:flutter/material.dart';

class ExampleTextButton extends StatelessWidget {
  const ExampleTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TextButton — простая текстовая кнопка без тени.
    // WidgetStateProperty позволяет нам отслеживать состояние кнопки и изменять её поведения в зависимости от этого

    return TextButton(
      // Стили применяемые к кнопке
      style: ButtonStyle(
        // Стиль текста в кнопке
        textStyle: WidgetStateProperty.all(
          TextStyle(fontSize: 32, color: Colors.orange),
        ),
        // Цвет переднего плана
        foregroundColor: WidgetStateProperty.all(Colors.orange),
        // Цвет заднего фона
        backgroundColor: WidgetStateProperty.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            // Если кнопка нажата, задний фон - голубой
            return Colors.blue;
          }

          // В других случаях - красный
          return Colors.red;
        }),
      ),
      // Действие, которое будет исполнено, как пользователь нажмет на кнопку
      onPressed: () {
        print('TextButton pressed');
      },
      // Дочерний элемент
      child: Text('TextButton'),
    );
  }
}
