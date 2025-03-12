import 'package:flutter/material.dart';

class ExampleExpanded extends StatelessWidget {
  const ExampleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    // Expanded — это виджет, который заставляет своего дочернего элемента занимать все доступное пространство
    // в направлении, заданном родительским виджетом (например, в строке или колонке).

    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 100,
        ),
      ],
    );
  }
}
