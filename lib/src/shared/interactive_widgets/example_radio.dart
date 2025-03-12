import 'package:flutter/material.dart';

enum Gender { male, female }

class ExampleRadio extends StatefulWidget {
  const ExampleRadio({super.key});

  @override
  State<ExampleRadio> createState() => _ExampleRadioState();
}

class _ExampleRadioState extends State<ExampleRadio> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    // Radio позволяет пользователю выбирать одну опцию из нескольких.

    return Column(
      children: [
        Radio<Gender>(
          // Значение, связанное с радио-кнопкой.
          value: Gender.male,
          // Текущее выбранное значение в группе радио-кнопок.
          groupValue: _selectedGender,
          // Вызывается при выборе радио-кнопки.
          onChanged: (Gender? value) {
            setState(() {
              _selectedGender = value;
            });
          },
          // Цвет радио-кнопки, когда она выбрана.
          activeColor: Colors.blue,
        ),
        Radio<Gender>(
          value: Gender.female,
          groupValue: _selectedGender,
          onChanged: (Gender? value) {
            setState(() {
              _selectedGender = value;
            });
          },
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}
