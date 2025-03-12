import 'package:flutter/material.dart';

class ExampleSwitch extends StatefulWidget {
  const ExampleSwitch({super.key});

  @override
  State<ExampleSwitch> createState() => _ExampleSwitchState();
}

class _ExampleSwitchState extends State<ExampleSwitch> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // Switch позволяет пользователю включать или выключать опцию.

    return Switch(
      // Текущее состояние переключателя true/false
      value: _isSwitched,
      // Вызывается при изменении состояния переключателя.
      onChanged: (bool value) {
        setState(() {
          _isSwitched = value;
        });
      },
      // Цвет переключателя, когда он включен.
      activeColor: Colors.green,
      // Цвет ползунка, когда переключатель выключен.
      inactiveThumbColor: Colors.red,
    );
  }
}
