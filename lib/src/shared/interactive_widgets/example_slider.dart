import 'package:flutter/material.dart';

class ExampleSlider extends StatefulWidget {
  const ExampleSlider({super.key});

  @override
  State<ExampleSlider> createState() => _ExampleSliderState();
}

class _ExampleSliderState extends State<ExampleSlider> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    // Slider позволяет пользователю выбирать значение из диапазона.

    return Slider(
      // Текущее значение слайдера.
      value: _sliderValue,
      // Вызывается при изменении значения слайдера.
      onChanged: (double value) {
        setState(() {
          _sliderValue = value;
        });
      },
      // Минимальное значение слайдера.
      min: 0,
      // Максимальное значение слайдера.
      max: 100,
      // Количество делений на слайдере.
      divisions: 10,
      // Метка, которая отображается над ползунком.
      label: _sliderValue.round().toString(),
      // Цвет активной части слайдера.
      activeColor: Colors.blue,
      // Цвет неактивной части слайдера.
      inactiveColor: Colors.grey,
    );
  }
}
