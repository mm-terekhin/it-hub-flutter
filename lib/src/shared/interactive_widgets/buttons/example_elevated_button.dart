import 'package:flutter/material.dart';

class ExampleElevatedButton extends StatelessWidget {
  const ExampleElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // ElevatedButton — кнопка с тенью, которая приподнимается при нажатии.
    // WidgetStateProperty позволяет нам отслеживать состояние кнопки и изменять её поведения в зависимости от этого

    return ElevatedButton(
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
        print('ElevatedButton pressed');
      },
      // Дочерний элемент
      child: Text('ElevatedButton'),
    );
  }
}
