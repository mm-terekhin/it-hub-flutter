import 'package:flutter/material.dart';

class ExampleOutlinedButton extends StatelessWidget {
  const ExampleOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // OutlinedButton — кнопка с контуром.
    // WidgetStateProperty позволяет нам отслеживать состояние кнопки и изменять её поведения в зависимости от этого

    return OutlinedButton(
      // Стили применяемые к кнопке
      style: ButtonStyle(
        // Цвет границы
        side: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return BorderSide(
              color: Colors.red,
              width: 4,
              style: BorderStyle.solid,
            );
          }

          return BorderSide(
            color: Colors.grey,
            width: 4,
            style: BorderStyle.solid,
          );
        }),
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
        print('OutlinedButton pressed');
      },
      // Дочерний элемент
      child: Text('OutlinedButton'),
    );
  }
}
