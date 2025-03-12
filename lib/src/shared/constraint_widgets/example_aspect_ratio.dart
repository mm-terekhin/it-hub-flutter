import 'package:flutter/material.dart';

class ExampleAspectRatio extends StatelessWidget {
  const ExampleAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    // AspectRatio — это виджет, который задает соотношение сторон для своего дочернего элемента.
    // Это полезно, когда нужно сохранить определенное соотношение ширины и высоты.

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
