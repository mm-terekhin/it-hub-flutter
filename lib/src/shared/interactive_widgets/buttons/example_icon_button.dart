import 'package:flutter/material.dart';

class ExampleIconButton extends StatelessWidget {
  const ExampleIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    // IconButton — кнопка с иконкой.
    // WidgetStateProperty позволяет нам отслеживать состояние кнопки и изменять её поведения в зависимости от этого

    return IconButton(
      // Стили применяемые к кнопке
      style: ButtonStyle(
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
        print('IconButton pressed');
      },
      // Дочерний элемент
      icon: Icon(Icons.thumb_up),
    );
  }
}
