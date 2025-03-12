import 'package:flutter/material.dart';

class ExampleLimitedBox extends StatelessWidget {
  const ExampleLimitedBox({super.key});

  @override
  Widget build(BuildContext context) {
    // LimitedBox — это виджет, который задает максимальные размеры для своего дочернего элемента,
    // но только если он не ограничен родительским виджетом.

    return LimitedBox(
      maxWidth: 100,
      maxHeight: 100,
      child: Container(color: Colors.yellow),
    );
  }
}
