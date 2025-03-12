import 'package:flutter/material.dart';


class ExampleContainer extends StatelessWidget {
  const ExampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Container -  это универсальный виджет, который может содержать другие виджеты
    // и управлять их размерами, отступами, цветом и другими свойствами.

    return Container(
      // Внутренние отступы
      padding: EdgeInsets.only(top: 16, right: 12, left: 12, bottom: 16),
      // Внешние отступы
      margin: EdgeInsets.only(top: 16, right: 12, left: 12, bottom: 16),
      // Ширина
      width: 100,
      // Высота
      height: 100,
      decoration: BoxDecoration(
        // Цвет
        color: Colors.blue,
        // Граница
        border: Border.all(color: Colors.grey, width: 2),
        // Скругление углов
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      // Дочерний элемент
      child: Text('Hello, Flutter!'),
    );
  }
}
