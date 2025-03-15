import 'package:flutter/material.dart';

class ExampleGestureDetector extends StatelessWidget {
  const ExampleGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    // InkWell позволяет распознавать различные жесты, такие как нажатия, двойные нажатия, долгие нажатия и т.д.
    // Имитирует поведение кнопки

    return InkWell(
      // Вызывается при одинарном нажатии.
      onTap: () {
        print('Нажатие!');
      },
      // Вызывается при двойном нажатии.
      onDoubleTap: () {
        print('Двойное нажатие!');
      },
      // Вызывается при долгом нажатии.
      onLongPress: () {
        print('Долгое нажатие!');
      },
      // Виджет, который будет реагировать на жесты.
      child: Container(
        width: 100,
        height: 100,
        child: Center(child: Text('Нажми на меня')),
      ),
    );
  }
}
