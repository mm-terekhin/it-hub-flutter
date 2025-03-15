import 'package:flutter/material.dart';

class ExampleCheckbox extends StatefulWidget {
  const ExampleCheckbox({super.key});

  @override
  State<ExampleCheckbox> createState() => _ExampleCheckboxState();
}

class _ExampleCheckboxState extends State<ExampleCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // Checkbox позволяет пользователю выбирать или снимать выбор с опции.

    return Checkbox(
      // Текущее состояние чекбокса true/false
      value: isChecked,
      // Цвет чекбокса, когда он отмечен
      activeColor: Colors.red,
      // Цвет галочки внутри чекбокса
      checkColor: Colors.white,
      // Вызывается при изменении состояния чекбокса
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
