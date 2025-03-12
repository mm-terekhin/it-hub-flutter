import 'package:flutter/material.dart';

class ExampleFlexible extends StatelessWidget {
  const ExampleFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    //Flexible — это виджет, который позволяет своему дочернему элементу занимать часть доступного пространства,
    // но не обязательно все, как в случае с Expanded.

    return Row(
      children: [
        Flexible(flex: 2, child: Container(color: Colors.blue, height: 100)),
        Flexible(flex: 1, child: Container(color: Colors.red, height: 100)),
      ],
    );
  }
}
