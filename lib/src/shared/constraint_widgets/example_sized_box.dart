import 'package:flutter/material.dart';

class ExampleSizedBox extends StatelessWidget {
  const ExampleSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    // SizedBox — это виджет, который задает фиксированные размеры для своего дочернего элемента.
    // Если дочерний элемент отсутствует, SizedBox просто занимает указанное пространство.

    return SizedBox(
      // Ширина
      width: 200,
      // Высота
      height: 100,
      // Дочерний элемент
      child: ColoredBox(color: Colors.yellow),
    );
  }
}
