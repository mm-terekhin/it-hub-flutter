import 'package:flutter/material.dart';

class BasicWidgetsMaterial extends StatelessWidget {
  const BasicWidgetsMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Домашняя страница'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              'Привет!\nЭто мое первое приложение',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: const Text('Поздороваться'),
            ),
          ],
        ),
      ),
    );
  }
}
