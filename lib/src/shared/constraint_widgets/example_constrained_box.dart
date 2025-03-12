import 'package:flutter/material.dart';

class ExampleConstrainedBox extends StatelessWidget {
  const ExampleConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    // ConstrainedBox — это виджет, который накладывает дополнительные ограничения на своего дочернего элемента.
    // Он может использоваться для задания минимальных и максимальных размеров.

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 100,
        maxWidth: 200,
        minHeight: 50,
        maxHeight: 150,
      ),
      child: ElevatedButton(onPressed: () {}, child: Text('Press Me')),
    );
  }
}
